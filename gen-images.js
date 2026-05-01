const https = require('https');
const fs = require('fs');
const path = require('path');

const API_KEY = process.env.PIXMIND_API_KEY;
const API_HOST = 'aihub-admin.aimix.pro';
const BASE = 'D:/Code/OpenPrompts/Midjouney_V7';

function apiRequest(method, urlPath, body) {
  return new Promise((resolve, reject) => {
    const opts = {
      hostname: API_HOST,
      path: urlPath,
      method: method,
      headers: {
        'Content-Type': 'application/json',
        'X-API-Key': API_KEY
      },
      timeout: 30000
    };
    const req = https.request(opts, (res) => {
      let data = '';
      res.on('data', (chunk) => data += chunk);
      res.on('end', () => {
        try { resolve(JSON.parse(data)); }
        catch (e) { reject(new Error(`Parse error: ${data.slice(0, 200)}`)); }
      });
    });
    req.on('error', reject);
    req.on('timeout', () => { req.destroy(); reject(new Error('timeout')); });
    if (body) req.write(JSON.stringify(body));
    req.end();
  });
}

function download(url, filepath) {
  return new Promise((resolve, reject) => {
    const dir = path.dirname(filepath);
    if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
    const file = fs.createWriteStream(filepath);
    const doDL = (u) => {
      https.get(u, (res) => {
        if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
          doDL(res.headers.location);
          return;
        }
        res.pipe(file);
        file.on('finish', () => { file.close(); resolve(); });
      }).on('error', (e) => { fs.unlink(filepath, () => {}); reject(e); });
    };
    doDL(url);
  });
}

function sleep(ms) { return new Promise(r => setTimeout(r, ms)); }

const TASKS = [
  { name: 'photography/editorial-fashion', prompt: 'Editorial fashion portrait of a woman in a bold red outfit against a brutalist concrete wall, shot on Hasselblad medium format, soft diffused lighting, desaturated color palette', ar: '4:5' },
  { name: 'photography/cinematic-fisherman', prompt: 'Cinematic portrait of an elderly fisherman with weathered hands and deep wrinkles, natural window light from left, warm morning atmosphere, background of a coastal harbor, documentary photography style', ar: '4:5' },
  { name: 'photography/vintage-street', prompt: 'Man walking his dog on a street, you can see his full body, like an old vintage photograph, film fuji color', ar: '16:9' },
  { name: 'cinematic/fpv-forest', prompt: 'FPV drone racing through redwood forest, morning mist, golden sunlight, photorealistic', ar: '16:9' },
  { name: 'cinematic/cyberpunk-tokyo', prompt: 'Tracking shot through neon-lit Tokyo streets at night, rain-slicked pavement reflecting cyberpunk signs, cinematic, film grain', ar: '16:9' },
  { name: 'cinematic/hero-shot', prompt: 'Low angle hero shot of a warrior standing on a cliff edge overlooking a vast fantasy landscape, dramatic rim lighting, windswept hair and cloak, golden hour', ar: '9:16' },
  { name: 'architecture/forest-retreat', prompt: 'A serene wellness retreat nestled in a redwood forest, architectural photography, built from cross-laminated timber and rammed earth walls, large panoramic windows framing the trees, dappled sunlight, green roof, hyper-realistic', ar: '16:9' },
  { name: 'architecture/parametric-facade', prompt: 'A stunning parametric facade on a corporate headquarters, algorithmic architecture, complex woven structure of glass and white composite panels, reflecting a dynamic sky, futuristic, wide-angle lens, photorealistic render', ar: '16:9' },
  { name: 'architecture/tadao-ando-gallery', prompt: 'A small art gallery, architectural photography, in the style of Tadao Ando, masterful use of raw concrete and natural light, serene spatial composition, minimalist, dramatic shadow play', ar: '4:3' },
  { name: 'nature/misty-village', prompt: 'Crane shot descending over a misty mountain village at sunrise, traditional stone buildings with slate roofs, narrow winding cobblestone streets, warm golden light breaking through fog layers, cinematic', ar: '16:9' },
  { name: 'nature/aurora-cabin', prompt: 'Aurora borealis over a warm lit log cabin in the snowy wilderness, vivid green and purple lights dancing in the sky, reflection on a frozen lake, long exposure photography', ar: '16:9' },
  { name: 'concept-art/transport-hub', prompt: 'Futuristic conceptual architecture, a transportation hub with aerodynamic carbon fiber arches and ethereal light tunnels, speculative design, bio-inspired structures, neon glow, foggy atmosphere, epic scale, concept art', ar: '16:9' },
  { name: 'concept-art/dark-fantasy', prompt: '1970s dark fantasy movie poster style, barbarian warrior on a throne, Frank Frazetta inspired, oil painting texture, warm amber tones, heavy shadows', ar: '2:3' },
  { name: 'anime/ghibli-fishing', prompt: 'Close-up of a boy fishing in the river and catching a fish, captured with the finesse of Ghibli storytelling, lush green background, soft lighting, detailed background', ar: '16:9' },
  { name: 'anime/anime-forest-girl', prompt: 'A girl standing in a mystical forest, anime illustration style, vibrant colors, detailed eyes, cel shading, dynamic pose, studio ghibli inspired, soft lighting, detailed background', ar: '16:9' },
  { name: '3d/futuristic-vehicle', prompt: '3D-Illustration of a futuristic vehicle with smooth surfaces and dynamic lines, illuminated under a starry sky, octane render, volumetric lighting', ar: '16:9' },
  { name: '3d/isometric-city', prompt: 'Isometric representation of a complex futuristic city map, all buildings and streets in perfect harmony, visible from bird eye view', ar: '16:9' },
  { name: 'product/luxury-watch', prompt: 'Orbital product photography of a luxury chronograph watch on dark marble, single spotlight from above creating premium reflections, studio lighting, photorealistic', ar: '1:1' },
  { name: 'product/perfume-bottle', prompt: 'Elegant perfume bottle on a mirrored surface, scattered rose petals, soft side lighting creating depth and drama, luxury cosmetics photography, pastel pink and gold tones', ar: '4:5' },
  { name: 'abstract/metallic-paint', prompt: 'Two streams of metallic paint colliding in mid-air, gold and teal, frozen in time, high-speed photography style, black background, abstract art', ar: '1:1' },
  { name: 'abstract/light-refraction', prompt: 'Geometric light refraction through crystal prisms, creating rainbow spectrum patterns, top-down view, multiple light sources, album cover art', ar: '1:1' },
  { name: 'text/jazz-night-poster', prompt: 'A digital poster for a jazz night event with the words Smooth Sounds Tonight in glowing letters, moody lighting, neon aesthetic, dark background', ar: '2:3' },
  { name: 'text/neon-sign', prompt: 'Neon sign reading DREAM BIG mounted on a dark brick wall, warm glow reflecting on wet pavement below, atmospheric, urban photography style', ar: '16:9' },
];

async function main() {
  console.log(`=== Submitting ${TASKS.length} tasks (direct API, no env var needed) ===\n`);

  // Submit 3 at a time
  const results = [];
  for (let i = 0; i < TASKS.length; i += 3) {
    const batch = TASKS.slice(i, i + 3);
    const batchResults = await Promise.all(batch.map(async (task) => {
      try {
        const res = await apiRequest('POST', '/open-api/v1/image/generate', {
          prompt: task.prompt,
          model: 'seedream-4.0',
          aspectRatio: task.ar
        });
        const tid = res.data?.taskId;
        if (tid) {
          console.log(`[OK] ${task.name} -> task ${tid}`);
          return { ...task, taskId: tid };
        }
        console.log(`[FAIL] ${task.name} -> ${res.message || JSON.stringify(res)}`);
        return { ...task, taskId: null };
      } catch (e) {
        console.log(`[ERR] ${task.name} -> ${e.message}`);
        return { ...task, taskId: null };
      }
    }));
    results.push(...batchResults);
    if (i + 3 < TASKS.length) await sleep(2000);
  }

  const valid = results.filter(r => r.taskId);
  console.log(`\n=== ${valid.length}/${TASKS.length} submitted. Polling... ===\n`);

  // Poll and download
  for (let attempt = 1; attempt <= 60; attempt++) {
    const pending = valid.filter(r => !r.done);
    if (pending.length === 0) break;

    console.log(`--- Poll ${attempt} (${pending.length} left) ---`);
    await sleep(12000);

    for (const job of pending) {
      try {
        const res = await apiRequest('GET', `/open-api/v1/task/${job.taskId}`);
        if (res.data?.status === 'ready' && res.data?.images?.[0]) {
          const imgUrl = res.data.images[0];
          const ext = imgUrl.split('.').pop().split('?')[0] || 'jpg';
          const outPath = path.join(BASE, 'images', `${job.name}.${ext}`);
          await download(imgUrl, outPath);
          job.done = true;
          console.log(`  [DONE] ${job.name}`);
        }
      } catch (e) {
        console.log(`  [ERR] ${job.name}: ${e.message.slice(0, 80)}`);
      }
    }
  }

  const done = valid.filter(r => r.done).length;
  console.log(`\n=== Complete: ${done}/${valid.length} images ===`);
  const failed = valid.filter(r => !r.done);
  if (failed.length) {
    console.log('Still pending:');
    failed.forEach(r => console.log(`  - ${r.name}`));
  }
}

main().catch(e => console.error('Fatal:', e));
