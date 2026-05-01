#!/bin/bash
# Step 1: Submit all generation tasks and collect task IDs
# Step 2: Poll and download results

API_URL="https://aihub-admin.aimix.pro/open-api/v1/image/generate"
STATUS_URL="https://aihub-admin.aimix.pro/open-api/v1/task"
API_KEY="$PIXMIND_API_KEY"
BASE="D:/Code/OpenPrompts/Midjouney_V7"

submit() {
    local name="$1" prompt="$2" aspect="$3" stylize="$4"
    local out_file="$BASE/.tasks/${name}.task"

    resp=$(curl -s -X POST "$API_URL" \
        -H "Content-Type: application/json" \
        -H "X-API-Key: $API_KEY" \
        -d "$(jq -n --arg p "$prompt" --arg ar "$aspect" --argjson s "$stylize" \
            '{prompt: $p, model: "mj-v7", aspectRatio: $ar, speed: "fast", stylization: $s}')")

    tid=$(echo "$resp" | jq -r '.data.taskId // empty')
    if [ -n "$tid" ]; then
        echo "$tid" > "$out_file"
        echo "[OK] $name -> task $tid"
    else
        echo "[FAIL] $name -> $(echo "$resp" | jq -c .)"
    fi
}

mkdir -p "$BASE/.tasks"

echo "=== Submitting all tasks ==="

submit "cinematic/fpv-forest" \
    "FPV drone racing through redwood forest, morning mist, golden sunlight, photorealistic" \
    "16:9" 300 &

submit "cinematic/cyberpunk-tokyo" \
    "Tracking shot through neon-lit Tokyo streets at night, rain-slicked pavement reflecting cyberpunk signs, cinematic, film grain" \
    "16:9" 400 &

submit "cinematic/hero-shot" \
    "Low angle hero shot of a warrior standing on a cliff edge overlooking a vast fantasy landscape, dramatic rim lighting, windswept hair and cloak, golden hour" \
    "9:16" 350 &

submit "photography/editorial-fashion" \
    "Editorial fashion portrait of a woman in a bold red outfit against a brutalist concrete wall, shot on Hasselblad medium format, soft diffused lighting, desaturated color palette" \
    "4:5" 350 &

submit "photography/cinematic-fisherman" \
    "Cinematic portrait of an elderly fisherman with weathered hands and deep wrinkles, natural window light from left, warm morning atmosphere, background of a coastal harbor, documentary photography style" \
    "4:5" 300 &

submit "photography/vintage-street" \
    "Man walking his dog on a street, you can see his full body, like an old vintage photograph, film fuji color" \
    "16:9" 250 &

submit "architecture/forest-retreat" \
    "A serene wellness retreat nestled in a redwood forest, architectural photography, built from cross-laminated timber and rammed earth walls, large panoramic windows framing the trees, dappled sunlight filtering through the canopy, green roof, hyper-realistic" \
    "16:9" 250 &

submit "architecture/parametric-facade" \
    "A stunning parametric facade on a corporate headquarters, algorithmic architecture, a complex woven structure of glass and white composite panels, reflecting a dynamic sky, highly detailed intricate patterns, futuristic, wide-angle lens, photorealistic render" \
    "16:9" 250 &

submit "architecture/tadao-ando-gallery" \
    "A small art gallery, architectural photography, in the style of Tadao Ando, masterful use of raw concrete and natural light, serene spatial composition, minimalist, dramatic shadow play" \
    "4:3" 250 &

submit "nature/misty-village" \
    "Crane shot descending over a misty mountain village at sunrise, traditional stone buildings with slate roofs, narrow winding cobblestone streets, warm golden light breaking through fog layers, cinematic" \
    "16:9" 300 &

submit "nature/aurora-cabin" \
    "Aurora borealis over a warm lit log cabin in the snowy wilderness, vivid green and purple lights dancing in the sky, reflection on a frozen lake, long exposure photography" \
    "16:9" 500 &

submit "concept-art/transport-hub" \
    "Futuristic conceptual architecture, a transportation hub with aerodynamic carbon fiber arches and ethereal light tunnels, speculative design, bio-inspired structures, neon glow, foggy atmosphere, epic scale, concept art, Unreal Engine 5 render" \
    "21:9" 300 &

submit "concept-art/dark-fantasy" \
    "1970s dark fantasy movie poster style, barbarian warrior on a throne, Frank Frazetta inspired, oil painting texture, warm amber tones, heavy shadows" \
    "2:3" 400 &

submit "anime/ghibli-fishing" \
    "Close-up of a boy fishing in the river and catching a fish, captured with the finesse of Ghibli storytelling, lush green background, soft lighting, detailed background" \
    "16:9" 250 &

submit "anime/anime-forest-girl" \
    "A girl standing in a mystical forest, anime illustration style, vibrant colors, detailed eyes, cel shading, dynamic pose, studio ghibli inspired, soft lighting, detailed background" \
    "16:9" 300 &

submit "3d/futuristic-vehicle" \
    "3D-Illustration of a futuristic vehicle with smooth surfaces and dynamic lines, illuminated under a starry sky, octane render, volumetric lighting" \
    "16:9" 250 &

submit "3d/isometric-city" \
    "Isometric representation of a complex futuristic city map in which all buildings and streets are in perfect harmony with each other and visible from a bird eye view" \
    "16:9" 300 &

submit "product/luxury-watch" \
    "Orbital product photography of a luxury chronograph watch on dark marble, single spotlight from above creating premium reflections, studio lighting, photorealistic" \
    "1:1" 100 &

submit "product/perfume-bottle" \
    "Elegant perfume bottle on a mirrored surface, scattered rose petals, soft side lighting creating depth and drama, luxury cosmetics photography, pastel pink and gold tones" \
    "4:5" 300 &

submit "abstract/metallic-paint" \
    "Two streams of metallic paint colliding in mid-air, gold and teal, frozen in time, high-speed photography style, black background, abstract art" \
    "1:1" 600 &

submit "abstract/light-refraction" \
    "Geometric light refraction through crystal prisms, creating rainbow spectrum patterns, top-down view, multiple light sources, album cover art" \
    "1:1" 700 &

submit "text/jazz-night-poster" \
    "A digital poster for a jazz night event with the words Smooth Sounds Tonight in glowing letters, moody lighting, neon aesthetic, dark background" \
    "2:3" 250 &

submit "text/neon-sign" \
    "Neon sign reading DREAM BIG mounted on a dark brick wall, warm glow reflecting on wet pavement below, atmospheric, urban photography style" \
    "16:9" 400 &

wait
echo ""
echo "=== All tasks submitted ==="
echo "Task IDs saved in $BASE/.tasks/"
