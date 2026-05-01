# Midjourney V7 Comprehensive Research Report
## Compiled: May 2026

---

# TABLE OF CONTENTS

1. [New Features and Capabilities](#1-new-features-and-capabilities)
2. [Prompt Syntax and Structure](#2-prompt-syntax-and-structure)
3. [Complete Parameter Reference](#3-complete-parameter-reference)
4. [Prompt Examples by Category (30+)](#4-prompt-examples-by-category)
5. [Prompt Engineering Techniques](#5-prompt-engineering-techniques)
6. [SREF Style Codes](#6-sref-style-codes)
7. [Common Mistakes to Avoid](#7-common-mistakes-to-avoid)
8. [V7 vs V6 Comparison](#8-v7-vs-v6-comparison)
9. [Key Resources and Sources](#9-key-resources-and-sources)

---

# 1. New Features and Capabilities

**Release date:** April 3, 2025. Became default model June 17, 2025.

V7 is described as a "ground-up rework" focused on three priorities: **photographic realism, physical coherence, and precise prompt interpretation.**

## Major New Features

| Feature | Details |
|---|---|
| **Video Generation** | Up to 21 seconds of AI-generated video; smooth camera movements; cinematic quality; multiple aspect ratios. First Midjourney model to support video. Quality varies by length: 5s = excellent, 10s = good, 15s = decent, 21s = mixed. |
| **Draft Mode** | 10x faster generation at half GPU cost. Lower-resolution output for rapid prototyping and iteration. Upscale/enhance later. |
| **Conversational Mode** | Interactive, chat-like prompting workflow. Say "make it winter" and it updates the scene while keeping the same composition. Voice input supported. |
| **Personalization (`--p`)** | Turned on by default for the first time. Requires rating ~200 images to build your aesthetic profile. Learns your visual preferences over time. |
| **Omni Reference (`--oref`)** | V7-exclusive. Replaces and extends V6's `--cref`. Works on characters, objects, vehicles, and non-human creatures (not just humans). Paired with `--ow` (omni weight) parameter. |
| **Experimental Parameter (`--exp`)** | Range 0-100. Adds advanced tone mapping and detail. Best kept under 25 for consistency. |
| **Higher Quality Tier (`--q 4`)** | New quality level beyond `--q 2` for maximum refinement at higher GPU cost. |
| **Enhanced Image Quality** | Better skin textures, fabric details, light/shadow, composition balance. Fewer artifacts (especially hands/fingers). |
| **Better Text Understanding** | V7 is "much smarter with text prompts" per community consensus. Understands natural language better than keyword stuffing. Text rendering still imperfect but improved. |
| **Improved Context Understanding** | Knows what "golden hour" and "cyberpunk aesthetic" mean without needing to spell out every detail. |

## Access and Pricing

| Plan | Price | Fast Hours | Key Features |
|---|---|---|---|
| Basic | $10/month | ~200/month | Good for casual use |
| Standard | $30/month | 15 hours | Adds unlimited relaxed mode |
| Pro | $60/month | 30 hours | 12 jobs at once + stealth mode |
| Mega | $120/month | 60 hours | Best for heavy users and pros |

All tiers get V7 access. Commercial use requires Pro subscription.

---

# 2. Prompt Syntax and Structure

## Core Formula (6-part structure)

The recommended V7 prompt structure follows this order:

```
[Subject] + [Action/Movement] + [Environment] + [Lighting] + [Style] + [Parameters]
```

1. **Subject** -- What is the main focus?
2. **Action/Movement** -- What is happening?
3. **Environment** -- Where is this taking place?
4. **Lighting** -- What mood does the light create?
5. **Style** -- Photorealistic, cinematic, painterly?
6. **Parameters** -- `--ar`, `--s`, `--chaos`, `--v 7`

### Critical formatting rules

- All parameters go at the **END** of your prompt, after descriptive text.
- Parameters placed mid-sentence will be **ignored**.
- Parameters are separated by a single space and start with `--`.
- Words at the **beginning** of the prompt carry more weight.

### Key Prompting Principles for V7

1. **Front-load important details** -- V7 weighs early words more heavily. Put your subject first.
   - BAD: `shot on film, photorealistic, woman in red dress`
   - GOOD: `woman in red dress, photorealistic, shot on film`

2. **Short and specific beats long and vague**
   - BAD: `beautiful landscape sunset`
   - GOOD: `Alpine valley at golden hour with snow-capped peaks, dramatic side lighting creating long shadows --ar 16:9 --s 300 --v 7`

3. **Natural language wins** over keyword stuffing
   - BAD: `forest, sunlight, morning, canopy, filter, rays`
   - GOOD: `morning sunlight filtering through forest canopy`

4. **One main subject** -- Multiple subjects confuse V7. Stick to one primary focus.
   - WORKS: `luxury watch on marble`
   - STRUGGLES: `luxury watch, smartphone, and laptop on marble`

5. **Lighting deserves detail** -- Vague lighting produces vague results.
   - BAD: `good lighting`
   - GOOD: `soft window light from left, warm morning atmosphere`
   - BEST: `directional golden hour sunlight creating long shadows, rim lighting on edges`

---

# 3. Complete Parameter Reference

## Core Parameters

| Parameter | Shorthand | Values | Default | Purpose |
|---|---|---|---|---|
| `--ar` | `--aspect` | `16:9`, `9:16`, `1:1`, `4:5`, `2:3`, `3:2`, `21:9` | `1:1` | Aspect ratio / frame shape |
| `--s` | `--stylize` | 0-1000 | varies | Artistic interpretation strength. Low = literal, High = artistic |
| `--chaos` | `--c` | 0-100 | `0` | Variation between the 4 generated images |
| `--q` | `--quality` | 0.5, 1, 2, 4 | `1` | Render quality/detail vs speed and GPU cost |
| `--style` | -- | `raw` | default | Reduces Midjourney's default aesthetic for more literal results |
| `--seed` | -- | 0-4294967295 | random | Reproducible results with same seed |
| `--no` | -- | e.g., `--no text, watermark` | none | Negative prompting (exclude elements) |
| `--tile` | -- | flag | off | Generates seamless tileable images |
| `--stop` | -- | 10-100 | 100 | Early generation cutoff (softer, sketch-like outputs) |
| `--weird` | `--w` | 0-3000 | `0` | Experimental/quirky variation |
| `--repeat` | `--r` | 2-40 | `1` | Multiple generations per prompt (each consumes GPU time) |
| `--v` | -- | `7` | current | Model version selector |
| `--iw` | -- | 0-3 | varies | Image prompt weight (how much reference image influences output) |

## V7-Specific / New Parameters

| Parameter | Values | Purpose |
|---|---|---|
| `--oref [URL]` | Image URL | Omni Reference -- place characters, objects, vehicles from a reference image |
| `--ow` | Numeric (community recommends ~400) | Omni Weight -- controls adherence to the `--oref` reference |
| `--exp` | 0-100 (best under 25) | Experimental aesthetics, advanced tone mapping and detail |
| `--p` | flag or code | Personalization -- uses your trained aesthetic profile |
| `--sref [URL or code]` | Image URL or numeric code | Style Reference -- captures visual vibe of an image |
| `--cref [URL]` | Image URL | Character Reference (legacy, `--oref` is preferred in V7) |

## Advanced Syntax

| Technique | Syntax | Example |
|---|---|---|
| **Multi-Prompt** | `concept1:: concept2::` | `cat:: dog::` |
| **Weighted Multi-Prompt** | `concept1::N concept2::M` | `cat::2 spaceship::1` |
| **Negative Weighting** | `concept::1 unwanted::-0.5` | Pushes concepts away |

---

# 4. Prompt Examples by Category

## A. CINEMATIC / VIDEO PROMPTS

### 1. FPV Forest Flight
```
FPV drone racing through redwood forest, morning mist, golden sunlight, photorealistic --ar 16:9 --s 300 --v 7
```
**Best for:** Nature documentaries, adventure content, travel sequences
**Tips:** Use `--s 300` for balanced artistic interpretation. Low chaos (15) maintains consistency.

### 2. Aerial Alpine Valley
```
Aerial drone shot of an alpine valley with snow-capped peaks and a winding river, dramatic side lighting creating long shadows, atmospheric haze in valley, golden hour --ar 16:9 --s 250 --c 20 --v 7
```
**Best for:** Establishing shots, travel documentaries, showcasing scale
**Tips:** Moderate stylize (250) balances realism with beauty. Specify foreground and background for depth.

### 3. Cyberpunk Tokyo Tracking
```
Tracking shot through neon-lit Tokyo streets at night, rain-slicked pavement reflecting cyberpunk signs, crowds of people with umbrellas, cinematic, film grain --ar 16:9 --s 400 --no crowds --v 7
```
**Best for:** Music videos, fashion content, cyberpunk aesthetics
**Tips:** Higher stylize (400) enhances neon colors. Rain amplifies neon reflections dramatically.

### 4. Low Angle Hero Shot
```
Low angle hero shot of a warrior standing on a cliff edge overlooking a vast fantasy landscape, dramatic rim lighting, windswept hair and cloak, golden hour --ar 9:16 --s 350 --c 5 --v 7
```
**Best for:** Character introductions, inspirational content, promotional imagery
**Tips:** Low chaos (5) ensures consistent framing. 9:16 perfect for mobile and social media.

### 5. Push-In Coffee Craft
```
Slow push-in on artisan hands crafting a latte, steam rising, warm morning light from cafe window, photorealistic, shallow depth of field --ar 9:16 --s 300 --v 7
```
**Best for:** Process videos, artisan content, meditative craft focus
**Tips:** Push-in naturally increases viewer focus. Vertical format ideal for social stories.

## B. PHOTOGRAPHY / PORTRAIT

### 6. Editorial Fashion Portrait
```
Editorial fashion portrait of a woman in a bold red outfit against a brutalist concrete wall, shot on Hasselblad medium format, soft diffused lighting, desaturated color palette --ar 4:5 --s 350 --v 7
```
**Best for:** Fashion editorials, brand campaigns, portfolio work

### 7. Cinematic Character Close-Up
```
Cinematic portrait of an elderly fisherman with weathered hands and deep wrinkles, natural window light from left, warm morning atmosphere, background of a coastal harbor, documentary photography style --ar 4:5 --s 300 --v 7
```
**Best for:** Documentary work, character studies, authentic storytelling

### 8. Vintage Street Photography
```
Man walking his dog on a street, you can see his full body, like an old vintage photograph, film fuji color --ar 16:9 --style raw --v 7
```
**Best for:** Retro aesthetics, mood boards, atmospheric content

### 9. Hyper-Realistic Cinematic Portrait
```
A hyper-realistic cinematic portrait of a handsome man with a rugged jawline and short, messy dark hair, wearing dark round sunglasses and a textured leather jacket, dramatic side lighting, shallow depth of field --ar 4:5 --s 250 --v 7
```
**Best for:** Character design, film pre-visualization, social media portraits

### 10. Cinematic Portrait Template
```
Cinematic portrait of a [subject], [background], soft ambient lighting, warm earthy tones, nostalgic 1970s wardrobe, reflective mood, gentle atmosphere --ar 4:5 --s 300 --v 7
```
**Best for:** Template for various character portraits. Replace [subject] and [background].

## C. PRODUCT / COMMERCIAL

### 11. Luxury Watch
```
Orbital product photography of a luxury chronograph watch on dark marble, single spotlight from above creating premium reflections, studio lighting, photorealistic --ar 1:1 --s 100 --c 0 --v 7
```
**Best for:** Luxury product launches, e-commerce, premium brand content
**Tips:** Zero chaos ensures perfect consistency. Square format ideal for Instagram.

### 12. Sneaker Exploded View
```
Exploded view of a running shoe, all components separated and floating, technical diagram style, pure white background, ultra-detailed, commercial product photography --ar 1:1 --s 150 --v 7
```
**Best for:** Technical marketing, product launches, design showcases
**Tips:** Ultra-low stylize (150) maintains accuracy. Pure white background for versatility.

### 13. Perfume Bottle Elegance
```
Elegant perfume bottle on a mirrored surface, scattered rose petals, soft side lighting creating depth and drama, luxury cosmetics photography, pastel pink and gold tones --ar 4:5 --s 300 --v 7
```
**Best for:** Luxury cosmetics, lifestyle marketing, editorial content

### 14. Electric Bike Concept
```
An electric bicycle designed for city commuters, modern style, white and silver color palette, minimal background, industrial design concept --ar 16:9 --style raw --v 7
```
**Best for:** Product concept visualization, startup pitches, investor presentations

### 15. Skincare Ad with Text
```
A minimalist Instagram ad for a skincare brand, pastel color palette, with a bottle of serum and a short tagline "Glow Daily" --ar 4:5 --v 7
```
**Best for:** Social media marketing, brand mockups, ad concept testing

## D. ARCHITECTURE

### 16. Sustainable Sanctuary
```
A serene wellness retreat nestled in a redwood forest, architectural photography, built from cross-laminated timber and rammed earth walls, large panoramic windows framing the trees, dappled sunlight filtering through the canopy, geothermal heating, green roof, hyper-realistic, 8k --ar 16:9 --v 7
```
**Best for:** Eco-conscious residential, spa design, biophilic design concepts

### 17. Adaptive Reuse
```
Architectural visualization of a modern glass extension added to a historic brick warehouse, adaptive reuse, exposed original brickwork interior, cast iron columns, in a dense urban setting, dusk, cinematic lighting, photorealistic details --ar 4:3 --v 7
```
**Best for:** Urban development, preservation projects, mixed-use proposals

### 18. Parametric Facade
```
A stunning parametric facade on a corporate headquarters, algorithmic architecture, a complex woven structure of glass and white composite panels, reflecting a dynamic sky, highly detailed intricate patterns, futuristic, wide-angle lens, photorealistic render --ar 16:9 --v 7
```
**Best for:** Commercial projects, cultural centers, statement buildings

### 19. Brutalist Library
```
A monumental brutalist library, raw concrete texture (beton brut), powerful geometric shapes, dramatic shadow play from sharp morning light, monolithic, atmospheric, wide-angle shot, black and white photography, high contrast --ar 3:2 --v 7
```
**Best for:** Cultural institutions, bold residential concepts, editorial content

### 20. Tadao Ando Style Gallery
```
A small art gallery, architectural photography, in the style of Tadao Ando, masterful use of raw concrete and natural light, serene spatial composition, profound silence, minimalist, dramatic shadow play --ar 4:3 --v 7
```
**Best for:** Museums, galleries, minimalist residential, design inspiration

### 21. Luxury Resort
```
Luxury resort infinity pool overlooking a tropical coastline at sunset, contemporary tropical architecture, natural stone and rich teak wood, guests lounging, lush landscaping, panoramic ocean view, golden hour lighting, inviting and serene, professional photography --ar 16:9 --v 7
```
**Best for:** Hospitality, real estate marketing, investor presentations

### 22. Sunken Living Room Interior
```
Interior architectural photography of a sunken living room in a minimalist home, featuring a plush sectional sofa and a statement marble fireplace, warm ambient lighting, a large window overlooking a rainy garden, cozy atmosphere, photorealistic, lens flare, depth of field --ar 4:5 --v 7
```
**Best for:** Interior design, residential visualization, lifestyle branding

### 23. Aerial Masterplan
```
Aerial masterplan visualization of a sustainable residential community, bird's-eye view, showing clusters of houses with green roofs, winding pathways, a central park with a pond, integrated into a forested landscape, sunny day, photorealistic, map-like detail --ar 1:1 --v 7
```
**Best for:** Urban planning, stakeholder presentations, community proposals

## E. CONCEPT ART / FANTASY

### 24. Futuristic Transport Hub
```
Futuristic conceptual architecture, a transportation hub with aerodynamic carbon fiber arches and ethereal light tunnels, speculative design, bio-inspired structures, neon glow, foggy atmosphere, epic scale, concept art, Unreal Engine 5 render --ar 21:9 --v 7
```
**Best for:** Competitions, sci-fi concept art, thought leadership

### 25. Dark Fantasy Poster
```
Create a dark fantasy poster with a young red-haired woman surrounded by mystical elements in a gloomy setting, gothic aesthetic, dramatic lighting --ar 16:9 --s 250 --v 7
```
**Best for:** Book covers, game art, dark fantasy illustration

### 26. 1970s Dark Fantasy (Frazetta Style)
```
1970s dark fantasy movie poster style, barbarian warrior on a throne, Frank Frazetta inspired, oil painting texture, warm amber tones, heavy shadows --ar 2:3 --s 400 --v 7
```
**Best for:** Retro fantasy, vintage illustration, collectible art

### 27. Character Consistency Test
```
A young girl with short black hair and green eyes wearing a yellow raincoat, holding a lantern in a forest, children's book illustration style, soft magical lighting, detailed background --ar 4:5 --v 7
```
**Best for:** Storybook illustration, character design, sequential art
**Tip:** Use the generated image with `--oref` for consistency across scenes.

## F. ANIME / ILLUSTRATION / CARTOON

### 28. Ghibli Style
```
Close-up of a boy fishing in the river and catching a fish, captured with the finesse of Ghibli's storytelling, lush green background, soft lighting, detailed background --ar 16:9 --v 7
```
**Best for:** Anime illustration, peaceful nature scenes, storybook art
**Note:** For dedicated anime output, also consider `--niji 6` instead of `--v 7`.

### 29. Anime with SREF
```
A girl standing in a mystical forest, anime illustration style, vibrant colors, detailed eyes, cel shading, dynamic pose, studio ghibli inspired, soft lighting, detailed background --ar 16:9 --sref 7435 --v 7
```
**Best for:** Anime art, manga illustration, character design

### 30. Cartoon Character
```
Taylor Swift as a Scooby-Doo character, classic cartoon style, bright colors, groovy 1970s aesthetic --ar 16:9 --v 7
```
**Best for:** Parody art, cartoon illustration, fun character design

## G. 3D / ISOMETRIC

### 31. Futuristic Vehicle 3D
```
3D-Illustration of a futuristic vehicle with smooth surfaces and dynamic lines, illuminated under a starry sky, octane render, volumetric lighting --ar 16:9 --v 7
```
**Best for:** Product concepts, sci-fi vehicle design, 3D illustration

### 32. Isometric City Map
```
Create an isometric representation of a complex, futuristic city map in which all buildings and streets are in perfect harmony with each other and visible from a bird's eye view --ar 16:9 --v 7
```
**Best for:** Game design, architectural planning, infographic-style illustration

### 33. Fantasy Game Pixel Art
```
Fantasy game, 16-bit pixel art --ar 16:9 --v 7
```
**Best for:** Indie game art, retro game design, nostalgia

## H. ABSTRACT / ARTISTIC

### 34. Fluid Paint Collision
```
Two streams of metallic paint colliding in mid-air, gold and teal, frozen in time, high-speed photography style, black background, abstract art --ar 1:1 --s 600 --c 30 --v 7
```
**Best for:** Abstract backgrounds, title sequences, artistic content

### 35. Geometric Light Refraction
```
Geometric light refraction through crystal prisms, creating rainbow spectrum patterns, top-down view, multiple light sources, album cover art --ar 1:1 --s 700 --v 7
```
**Best for:** Album covers, modern art prints, design inspiration

## I. NATURE / LANDSCAPE

### 36. Misty Mountain Village
```
Crane shot descending over a misty mountain village at sunrise, traditional stone buildings with slate roofs, narrow winding cobblestone streets, warm golden light breaking through fog layers, cinematic --ar 16:9 --s 300 --v 7
```
**Best for:** Travel documentaries, establishing shots, cultural content

### 37. Ocean Wave Barrel
```
POV shot from inside a massive ocean wave barrel, crystal clear turquoise water, sunlight refracting through the wave crest, wide angle, surf photography --ar 16:9 --s 350 --v 7
```
**Best for:** Surf content, adventure sports, ocean documentaries

### 38. Aurora Borealis
```
Aurora borealis time-lapse over a warm lit log cabin in the snowy wilderness, vivid green and purple lights dancing in the sky, reflection on a frozen lake, long exposure photography --ar 16:9 --s 500 --v 7
```
**Best for:** Nature documentaries, travel content, screensavers

## J. TEXT / TYPOGRAPHY

### 39. Jazz Night Event Poster
```
A digital poster for a jazz night event with the words "Smooth Sounds Tonight" in glowing letters, moody lighting, neon aesthetic, dark background --ar 2:3 --v 7
```
**Best for:** Event promotion, poster design, nightlife branding
**Note:** V7 text rendering is improved but still imperfect. Keep text short (2-4 words).

### 40. Interior Design Moodboard
```
Interior design moodboard for a modern Scandinavian living room, neutral tones, natural materials, clean lines, cozy textures, calm palette --ar 16:9 --v 7
```
**Best for:** Interior design proposals, brand moodboards, client presentations

### 41. Four Seasons Perspective
```
The same modern cabin with a cantilevered roof, shown in four seasonal variations: spring blossoms, summer lush greenery, autumn foliage, and winter snow. Consistent camera angle, photorealistic, documenting the changing environment --ar 16:9 --style raw --v 7
```
**Best for:** Client presentations, seasonal marketing, design comparison

---

# 5. Prompt Engineering Techniques

## Stylization Sweet Spots

| Range | Effect | Best For |
|---|---|---|
| `--s 0-100` | Very realistic, minimal AI styling | Product photos, documentation |
| `--s 200-300` | Balanced (recommended default) | Most general use cases |
| `--s 400-600` | More artistic freedom | Creative projects, concept art |
| `--s 700-1000` | Highly stylized, painterly | Abstract art, experimental work |

By use case:
- **Product Photography:** `--s 100-200`
- **Portraits:** `--s 250-350`
- **Landscapes:** `--s 250-400`
- **Abstract Art:** `--s 500-800`
- **Experimental:** `--s 800-1000`

## Chaos Control

| Range | Effect | Best For |
|---|---|---|
| `--chaos 0-10` | Minimal variation | Product photos, consistency |
| `--chaos 15-30` | Moderate variation | Creative work |
| `--chaos 40-100` | High variation | Exploration, experimental |

**Pro tip:** For professional work, keep chaos under 20.

## Camera Movement Keywords (for video/cinematic)

| Keyword | Effect |
|---|---|
| `FPV flight` | First-person drone racing |
| `Tracking shot` | Camera follows subject |
| `Orbital` | 360-degree rotation |
| `Crane down` | Descending aerial |
| `Push-in` | Moving closer slowly |
| `Low angle` | Ground-level looking up |
| `Dutch angle` | Tilted perspective |

## Lighting Precision Guide

Effective lighting descriptions (from most to least important):
- `directional golden hour sunlight creating long shadows, rim lighting on edges`
- `soft window light from left, warm morning atmosphere`
- `golden hour side lighting`
- `neon reflections on wet pavement`
- `single spotlight from above`
- `rim lighting around silhouette`
- `volumetric light beams`
- `soft ambient lighting`
- `dramatic chiaroscuro`

**Stat:** Specifying lighting produces ~3x better results than leaving it to the AI's default.

## Negative Prompting That Works

| Parameter | Effect |
|---|---|
| `--no text` | Removes random text/letters |
| `--no crowds` | Clears busy backgrounds |
| `--no watermark` | Prevents logo-like artifacts |
| `--no blur` | Forces sharp focus |
| `--no distortion` | Reduces weird proportions |

## Multi-Prompt Blending

Use `::` to separate concepts and assign weights:
- Basic: `cat:: dog::` (equal blend)
- Weighted: `cat::2 spaceship::1` (cat is 2x more important)
- Negative: `cat::1 spaceship::-0.5` (pushes spaceship away)

**V7 note:** Improved language understanding means weights are less critical than in earlier versions but still functional.

## Reference-Based Consistency

1. Use `--seed` for reproducible results across runs
2. Combine `--seed` with `--oref` for character consistency across scenes
3. Community and Midjourney team recommend `--ow 400` for best omni-reference adherence
4. Omni-reference works with personalization, stylization, style references, and moodboards

## Aspect Ratios by Platform

| Platform | Recommended AR |
|---|---|
| Instagram Feed | `--ar 1:1` |
| Instagram Stories / TikTok | `--ar 9:16` |
| YouTube | `--ar 16:9` |
| Pinterest | `--ar 2:3` |
| Cinematic Ultrawide | `--ar 21:9` |
| Portrait Photography | `--ar 4:5` |
| Standard Photography | `--ar 3:2` |
| Twitter/X | `--ar 16:9` or `--ar 1:1` |

## Systematic Testing Approach

1. Create a "base prompt" you are happy with
2. Duplicate it and change only ONE parameter at a time
3. Compare results to learn what each parameter does
4. Example test series:
   - Base prompt with `--s 300`
   - Same prompt with `--s 400`
   - Same prompt with `--s 500`

---

# 6. SREF Style Codes

## Popular SREF Codes

| Style | SREF Code | Description |
|---|---|---|
| Vibrant Anime | `--sref 7435` | Bright, anime/manga aesthetic |
| Celestial Charm | `--sref 16109` | Ethereal, heavenly feel |
| Futuristic Iridescence | `--sref 13448` | Shiny, futuristic metallic |
| Pale Blue Citrus | `--sref 7758` | Cool-toned pastel aesthetic |
| Elegant Color Fusion | `--sref 7110` | Rich, blended color palette |
| Cartoon 3D Game Art | `--sref 16048359` | 3D cartoon/game aesthetic |

## SREF Usage

```
/imagine a girl in a forest --sref 7435 --v 7
```

**Important notes:**
- SREF codes work in both V7 and V6.1 but produce slightly different aesthetics between models.
- You can use image URLs as style references: `--sref [image URL]`
- Multiple SREF codes can be combined: `--sref 7435 16109`
- SREF codes are numeric identifiers for specific visual styles discovered by the community.

## SREF Code Databases

| Resource | URL |
|---|---|
| SREF Database | https://sref-midjourney.com/ |
| Largest SREF Library | https://srefs.co/ |
| Anime SREF Collection | https://srefhunt.com/style/anime/ |
| Midlibrary 33 Animation SREFs | https://midlibrary.io/tops/33-unique-sref-codes-for-animation |
| Lummi 80+ Curated SREFs | https://www.lummi.ai/sref-codes |

---

# 7. Common Mistakes to Avoid

From 1000+ V7 generations tested, these five mistakes account for over 80% of disappointing results:

### Mistake 1: Vague Descriptions
- BAD: `beautiful landscape sunset`
- GOOD: `Alpine valley at golden hour with snow-capped peaks, dramatic side lighting creating long shadows, atmospheric haze in valley --ar 16:9 --s 300 --v 7`

### Mistake 2: Ignoring Lighting
- BAD: `portrait of woman`
- GOOD: `portrait of woman with window light from left creating soft shadows, warm morning atmosphere --ar 4:5 --s 300 --v 7`

### Mistake 3: Wrong Chaos Values
- Using `--chaos 50` for product photos gives inconsistent results
- Using `--chaos 0` for creative exploration misses variations
- Match chaos to your goal

### Mistake 4: Overcomplicated Prompts
- BAD: `Cinematic drone shot flying through misty forest at dawn with golden light rays piercing through trees while birds fly and deer graze and...`
- GOOD: `FPV drone through misty redwood forest at dawn, golden god rays, photorealistic --ar 16:9 --s 300 --v 7`

### Mistake 5: Not Testing Parameters
- Don't copy prompts blindly. Test different:
  - Stylization values
  - Chaos levels
  - Aspect ratios
  - Negative prompts

---

# 8. V7 vs V6 Comparison

## Image Quality

| Aspect | V6 | V7 |
|---|---|---|
| Photorealism | Good, occasional artifacts | Exceptional, fewer issues |
| Skin textures | Decent | Significantly improved |
| Fabric details | Acceptable | Much more realistic |
| Light and shadow | Good | Superior |
| Composition | Good | Better balanced |
| Hands/fingers | Problematic | Fewer weird artifacts |

## Capabilities

| Feature | V6 | V7 |
|---|---|---|
| Output type | Images only | Images + video (up to 21s) |
| Prompt understanding | Good | Much better natural language |
| Text rendering | Limited | Improved (still imperfect) |
| Personalization | Available, opt-in | Default on |
| Character reference | `--cref` (humans only) | `--oref` (characters, objects, vehicles, creatures) |
| Draft mode | Not available | 10x faster at half GPU cost |
| Conversational mode | Not available | Available |

## Parameter Changes

- `--stylize` range expanded to 1000
- `--chaos` behaves more predictably
- `--weird` not adjustable in V7 web UI (produces errors)
- Aspect ratios more flexible
- New: `--oref`, `--ow`, `--exp`, `--q 4`
- Old V6 prompts may produce different results in V7; retest them

## Different Strengths by Tool

| Tool | Best For |
|---|---|
| **Midjourney V7** | Artistic, cinematic, stylized imagery |
| **DALL-E 3** | Text accuracy, concept blending |
| **Stable Diffusion** | Customization, fine-grained control |
| **Ideogram** | Text/typography generation |

---

# 9. Key Resources and Sources

## Official Midjourney

| Resource | URL |
|---|---|
| Official Documentation | https://docs.midjourney.com |
| Official Updates Page | https://www.midjourney.com/updates |
| V7 Alpha Announcement | https://updates.midjourney.com/v7-alpha/ |
| Parameter List | https://docs.midjourney.com/hc/en-us/articles/32859204029709-Parameter-List |
| Prompt Basics | https://docs.midjourney.com/hc/en-us/articles/32023408776205-Prompt-Basics |
| Multi-Prompts and Weights | https://docs.midjourney.com/hc/en-us/articles/32658968492557-Multi-Prompts-Weights |
| Omni Reference Docs | https://docs.midjourney.com/hc/en-us/articles/36285124473997-Omni-Reference |
| Omni Reference Announcement | https://updates.midjourney.com/omni-reference-oref/ |
| Draft and Conversational Modes | https://docs.midjourney.com/hc/en-us/articles/35577175650957-Draft-Conversational-Modes |
| Style Reference Docs | https://docs.midjourney.com/hc/en-us/articles/32180011136653-Style-Reference |
| Aspect Ratio Docs | https://docs.midjourney.com/hc/en-us/articles/31894244298125-Aspect-Ratio |
| Chaos Docs | https://docs.midjourney.com/hc/en-us/articles/32099348346765-Chaos-Variety |

## Community and Guides

| Resource | URL |
|---|---|
| Reddit r/midjourney | https://reddit.com/r/midjourney |
| Reddit r/MidjourneyPrompts | https://reddit.com/r/MidjourneyPrompts |
| SurePrompts V7 Guide (50 prompts) | https://sureprompts.com/blog/midjourney-v7-prompting-guide |
| RunThePrompts V7 Cheat Sheet | https://runtheprompts.com/resources/midjourney-info/midjourney-parameter-cheat-sheet-v7/ |
| DataCamp V7 Tutorial (8 examples) | https://www.datacamp.com/tutorial/midjourney-v7 |
| AIUnpacker Architecture Prompts | https://aiunpacker.com/blog/midjourney-v7-10-best-architectural-visualization-prompts-for-2025/ |
| Printify Prompts Guide | https://printify.com/blog/midjourney-prompts/ |
| Geeky Curiosity Substack | https://geekycuriosity.substack.com/ |
| Geniea Prompt Templates | https://www.geniea.com/prompts/subject-character-design |
| Gradually.ai Parameters Guide | https://www.gradually.ai/en/midjourney-parameters/ |
| Promptaa Prompt Guide 2025 | https://promptaa.com/blog/midjourney-prompt-guide-2025 |
| YUV.AI V7 Masterclass | https://yuv.ai/learn/midjourney |
| CyberLink 30 Copy-Paste Prompts | https://www.cyberlink.com/blog/ai-prompts/5090/midjourney-prompts-guide |

## SREF Code Libraries

| Resource | URL |
|---|---|
| SREF Database | https://sref-midjourney.com/ |
| Largest SREF Library (srefs.co) | https://srefs.co/ |
| Anime SREF Collection | https://srefhunt.com/style/anime/ |
| Midlibrary 33 Animation SREFs | https://midlibrary.io/tops/33-unique-sref-codes-for-animation |
| Lummi 80+ Curated SREFs | https://www.lummi.ai/sref-codes |

## Video Tutorials

| Resource | URL |
|---|---|
| 25 NEW Midjourney V7 Tips | https://www.youtube.com/watch?v=-gXq3-k11_Y |
| 20 Tips for Midjourney V7 (SREF, Draft) | https://www.youtube.com/watch?v=hL3m4mukGlI |
| Write Prompts like THIS for V7 | https://www.youtube.com/watch?v=kWTP7GX7hAw |
| 25 ANIME V7 SREF Styles | https://www.youtube.com/watch?v=i3K9Xc8Pkn8 |
| 25 ILLUSTRATION V7 SREF Styles | https://www.youtube.com/watch?v=n0sfIlChxrg |
| 50 Phrases to Control V7 Images | https://www.youtube.com/watch?v=w3Umj9VBfOw |
| V7 for ARCHITECTURE 2025 | https://www.youtube.com/watch?v=D9R-jmn2jAE |
| OMNI-REFERENCE Complete Guide | https://www.youtube.com/watch?v=RpSBVIVCPOs |
