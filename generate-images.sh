#!/bin/bash
# Batch image generation script for awesome-midjourney-v7
# Uses Pixmind API with mj-v7 model

API_URL="https://aihub-admin.aimix.pro/open-api/v1/image/generate"
STATUS_URL="https://aihub-admin.aimix.pro/open-api/v1/task"
API_KEY="$PIXMIND_API_KEY"

generate_image() {
    local prompt="$1"
    local aspect="$2"
    local output="$3"
    local stylize="${4:-250}"

    echo "Generating: $output"

    # Submit generation task
    response=$(curl -s -X POST "$API_URL" \
        -H "Content-Type: application/json" \
        -H "X-API-Key: $API_KEY" \
        -d "{
            \"prompt\": $(echo "$prompt" | jq -Rs .),
            \"model\": \"mj-v7\",
            \"aspectRatio\": \"$aspect\",
            \"speed\": \"fast\",
            \"stylization\": $stylize
        }")

    task_id=$(echo "$response" | jq -r '.data.taskId // empty')

    if [ -z "$task_id" ]; then
        echo "  ERROR: Failed to submit task. Response: $response"
        return 1
    fi

    echo "  Task ID: $task_id"

    # Poll for completion
    for i in $(seq 1 60); do
        sleep 10
        status_response=$(curl -s "$STATUS_URL/$task_id" \
            -H "X-API-Key: $API_KEY")

        status=$(echo "$status_response" | jq -r '.data.status')
        progress=$(echo "$status_response" | jq -r '.data.progress // 0')

        if [ "$status" = "ready" ]; then
            image_url=$(echo "$status_response" | jq -r '.data.images[0]')
            echo "  Downloading: $image_url"
            curl -s -o "$output" "$image_url"
            echo "  Saved: $output"
            return 0
        fi

        echo "  Progress: $progress% ($status)"
    done

    echo "  ERROR: Timeout for task $task_id"
    return 1
}

# Create output directories
BASE_DIR="D:/Code/OpenPrompts/Midjouney_V7"
mkdir -p "$BASE_DIR/images"/{photography,cinematic,anime,3d,concept-art,architecture,product,nature,abstract,text}

echo "=== Starting batch image generation ==="
echo ""

# Photography
generate_image \
    "Editorial fashion portrait of a woman in a bold red outfit against a brutalist concrete wall, shot on Hasselblad medium format, soft diffused lighting, desaturated color palette" \
    "4:5" "$BASE_DIR/images/photography/editorial-fashion.webp" 350 &

generate_image \
    "Cinematic portrait of an elderly fisherman with weathered hands and deep wrinkles, natural window light from left, warm morning atmosphere, background of a coastal harbor, documentary photography style" \
    "4:5" "$BASE_DIR/images/photography/cinematic-fisherman.webp" 300 &

generate_image \
    "Man walking his dog on a street, you can see his full body, like an old vintage photograph, film fuji color" \
    "16:9" "$BASE_DIR/images/photography/vintage-street.webp" 250 &

# Cinematic
generate_image \
    "FPV drone racing through redwood forest, morning mist, golden sunlight, photorealistic" \
    "16:9" "$BASE_DIR/images/cinematic/fpv-forest.webp" 300 &

generate_image \
    "Tracking shot through neon-lit Tokyo streets at night, rain-slicked pavement reflecting cyberpunk signs, cinematic, film grain" \
    "16:9" "$BASE_DIR/images/cinematic/cyberpunk-tokyo.webp" 400 &

generate_image \
    "Low angle hero shot of a warrior standing on a cliff edge overlooking a vast fantasy landscape, dramatic rim lighting, windswept hair and cloak, golden hour" \
    "9:16" "$BASE_DIR/images/cinematic/hero-shot.webp" 350 &

# Architecture
generate_image \
    "A serene wellness retreat nestled in a redwood forest, architectural photography, built from cross-laminated timber and rammed earth walls, large panoramic windows framing the trees, dappled sunlight filtering through the canopy, green roof, hyper-realistic" \
    "16:9" "$BASE_DIR/images/architecture/forest-retreat.webp" 250 &

generate_image \
    "A stunning parametric facade on a corporate headquarters, algorithmic architecture, a complex woven structure of glass and white composite panels, reflecting a dynamic sky, highly detailed intricate patterns, futuristic, wide-angle lens, photorealistic render" \
    "16:9" "$BASE_DIR/images/architecture/parametric-facade.webp" 250 &

generate_image \
    "A small art gallery, architectural photography, in the style of Tadao Ando, masterful use of raw concrete and natural light, serene spatial composition, minimalist, dramatic shadow play" \
    "4:3" "$BASE_DIR/images/architecture/tadao-ando-gallery.webp" 250 &

# Nature
generate_image \
    "Crane shot descending over a misty mountain village at sunrise, traditional stone buildings with slate roofs, narrow winding cobblestone streets, warm golden light breaking through fog layers, cinematic" \
    "16:9" "$BASE_DIR/images/nature/misty-village.webp" 300 &

generate_image \
    "Aurora borealis over a warm lit log cabin in the snowy wilderness, vivid green and purple lights dancing in the sky, reflection on a frozen lake, long exposure photography" \
    "16:9" "$BASE_DIR/images/nature/aurora-cabin.webp" 500 &

# Concept Art
generate_image \
    "Futuristic conceptual architecture, a transportation hub with aerodynamic carbon fiber arches and ethereal light tunnels, speculative design, bio-inspired structures, neon glow, foggy atmosphere, epic scale, concept art, Unreal Engine 5 render" \
    "21:9" "$BASE_DIR/images/concept-art/transport-hub.webp" 300 &

generate_image \
    "1970s dark fantasy movie poster style, barbarian warrior on a throne, Frank Frazetta inspired, oil painting texture, warm amber tones, heavy shadows" \
    "2:3" "$BASE_DIR/images/concept-art/dark-fantasy.webp" 400 &

# Anime
generate_image \
    "Close-up of a boy fishing in the river and catching a fish, captured with the finesse of Ghibli's storytelling, lush green background, soft lighting, detailed background" \
    "16:9" "$BASE_DIR/images/anime/ghibli-fishing.webp" 250 &

generate_image \
    "A girl standing in a mystical forest, anime illustration style, vibrant colors, detailed eyes, cel shading, dynamic pose, studio ghibli inspired, soft lighting, detailed background" \
    "16:9" "$BASE_DIR/images/anime/anime-forest-girl.webp" 300 &

# 3D
generate_image \
    "3D-Illustration of a futuristic vehicle with smooth surfaces and dynamic lines, illuminated under a starry sky, octane render, volumetric lighting" \
    "16:9" "$BASE_DIR/images/3d/futuristic-vehicle.webp" 250 &

generate_image \
    "Isometric representation of a complex, futuristic city map in which all buildings and streets are in perfect harmony with each other and visible from a bird's eye view" \
    "16:9" "$BASE_DIR/images/3d/isometric-city.webp" 300 &

# Product
generate_image \
    "Orbital product photography of a luxury chronograph watch on dark marble, single spotlight from above creating premium reflections, studio lighting, photorealistic" \
    "1:1" "$BASE_DIR/images/product/luxury-watch.webp" 100 &

generate_image \
    "Elegant perfume bottle on a mirrored surface, scattered rose petals, soft side lighting creating depth and drama, luxury cosmetics photography, pastel pink and gold tones" \
    "4:5" "$BASE_DIR/images/product/perfume-bottle.webp" 300 &

# Abstract
generate_image \
    "Two streams of metallic paint colliding in mid-air, gold and teal, frozen in time, high-speed photography style, black background, abstract art" \
    "1:1" "$BASE_DIR/images/abstract/metallic-paint.webp" 600 &

generate_image \
    "Geometric light refraction through crystal prisms, creating rainbow spectrum patterns, top-down view, multiple light sources, album cover art" \
    "1:1" "$BASE_DIR/images/abstract/light-refraction.webp" 700 &

# Text
generate_image \
    "A digital poster for a jazz night event with the words Smooth Sounds Tonight in glowing letters, moody lighting, neon aesthetic, dark background" \
    "2:3" "$BASE_DIR/images/text/jazz-night-poster.webp" 250 &

generate_image \
    "Neon sign reading DREAM BIG mounted on a dark brick wall, warm glow reflecting on wet pavement below, atmospheric, urban photography style" \
    "16:9" "$BASE_DIR/images/text/neon-sign.webp" 400 &

# Wait for all background jobs
wait

echo ""
echo "=== Batch generation complete ==="
