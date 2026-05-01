# Architecture Template / 建筑模板

> Fill-in-the-blank architectural visualization templates. Replace `{{variables}}` with your own descriptions.

---

## Template 1: Exterior Architecture

```
Architectural visualization of {{building_type}}, {{material_description}}, {{architectural_style}}, {{setting}}, {{time_of_day}}, {{lighting}}, photorealistic --ar {{aspect}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{building_type}}` | Structure type | modern villa, glass office tower, cultural museum, residential townhouse |
| `{{material_description}}` | Exterior materials | exposed concrete and floor-to-ceiling glass, corten steel and timber cladding, white stucco and terracotta |
| `{{architectural_style}}` | Design movement | minimalist modernism, brutalist, Japanese wabi-sabi, Mediterranean revival |
| `{{setting}}` | Surrounding environment | hillside overlooking the ocean, dense urban downtown, forest clearing, desert landscape |
| `{{time_of_day}}` | Time and lighting period | golden hour sunset, blue hour twilight, bright midday, overcast afternoon |
| `{{lighting}}` | Light quality | warm ambient glow from interior, dramatic long shadows, soft natural illumination |
| `{{aspect}}` | Aspect ratio | 16:9 (wide), 21:9 (cinematic), 4:5 (portrait) |

### Example

```
Architectural visualization of a modern hillside villa, exposed concrete and floor-to-ceiling glass, minimalist modernism with Japanese influence, hillside overlooking the ocean, golden hour sunset, warm ambient glow from interior spilling onto terrace, photorealistic --ar 16:9 --v 7
```

---

## Template 2: Interior Design

```
Interior architectural photography of {{room_type}}, {{key_features}}, {{material_palette}}, {{lighting}}, {{atmosphere}}, photorealistic --ar {{aspect}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{room_type}}` | Interior space | open-plan living room, master bathroom, professional kitchen, hotel lobby |
| `{{key_features}}` | Notable design elements | double-height ceiling with skylight, floor-to-ceiling bookshelf, freestanding stone bathtub |
| `{{material_palette}}` | Materials and finishes | warm oak and brushed brass, polished concrete and walnut, marble and matte black fixtures |
| `{{lighting}}` | Light description | natural light flooding through large windows, pendant lights casting warm pools, recessed ambient lighting |
| `{{atmosphere}}` | Mood and feeling | serene and airy, cozy and intimate, dramatic and luxurious |
| `{{aspect}}` | Aspect ratio | 16:9 (wide), 4:5 (social), 1:1 (square) |

### Example

```
Interior architectural photography of an open-plan living room, double-height ceiling with skylight and floating staircase, warm oak flooring and brushed brass accents, natural light flooding through floor-to-ceiling windows, serene and airy atmosphere, photorealistic --ar 16:9 --v 7
```

---

## Template 3: Aerial/Urban Planning

```
Aerial masterplan visualization of {{development_type}}, bird's-eye view, {{key_features}}, {{landscape}}, {{time_of_day}}, photorealistic --ar 1:1 --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{development_type}}` | Project type | mixed-use urban district, waterfront residential community, technology campus, eco-village |
| `{{key_features}}` | Notable elements | central park with water feature, interconnected green corridors, pedestrian-friendly plazas |
| `{{landscape}}` | Surrounding landscape | tree-lined boulevards, waterfront promenade, terraced hillside gardens |
| `{{time_of_day}}` | Lighting period | golden hour with long shadows, soft overcast for even light, twilight with building lights on |

### Example

```
Aerial masterplan visualization of a waterfront residential community, bird's-eye view, central park with water feature and pedestrian bridges, waterfront promenade with mature trees, golden hour with long shadows, photorealistic --ar 1:1 --v 7
```

---

## Recommended Parameter Ranges

| Style | --s | --c | --ar | --style |
|-------|-----|-----|------|---------|
| Exterior Daytime | 150-300 | 0-10 | 16:9 | raw |
| Exterior Twilight | 200-350 | 0-15 | 16:9, 21:9 | default |
| Interior Design | 150-280 | 0-10 | 16:9 | raw |
| Aerial/Masterplan | 150-250 | 0-10 | 1:1 | raw |
| Concept/Mood | 300-500 | 10-25 | 16:9 | default |
| Detail/Close-up | 100-200 | 0 | 1:1, 4:5 | raw |

---

## Tips / 技巧

- **Use `--style raw` for accuracy** — Architectural visualization demands precision; raw style produces cleaner, more realistic results
- **Material descriptions matter** — Naming specific materials (corten steel, terrazzo, oiled oak) gives Midjourney clear rendering targets
- **Reference architectural styles** — Styles like "brutalist" or "Scandinavian minimalism" act as powerful shorthand for entire design vocabularies
- **Lighting defines the mood** — Interior shots especially benefit from specific lighting descriptions (pendant lights, skylights, window direction)
- **Keep chaos low** — Architecture requires structural coherence; stay under `--c 15`
- **Mention "photorealistic"** — This keyword pushes Midjourney away from illustrated or painted interpretations
