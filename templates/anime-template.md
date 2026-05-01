# Anime Template / 动漫模板

> Fill-in-the-blank anime and illustration templates. Replace `{{variables}}` with your own descriptions.

---

## Template 1: Anime Character

```
{{character_description}}, anime illustration style, {{pose}}, {{expression}}, {{outfit}}, {{background}}, {{color_scheme}}, {{studio_reference}} --ar {{aspect}} --sref {{sref_code}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{character_description}}` | Character identity | a young female mage with silver hair, a teenage samurai boy, a cyberpunk bounty hunter |
| `{{pose}}` | Body position | standing with hands on hips, sitting on a rooftop edge, mid-battle stance |
| `{{expression}}` | Facial expression | gentle smile with soft eyes, determined glare, mischievous smirk |
| `{{outfit}}` | Clothing description | flowing white robes with gold trim, futuristic tactical gear, school uniform |
| `{{background}}` | Setting behind character | cherry blossom garden, neon-lit city street, starry night sky |
| `{{color_scheme}}` | Color palette | soft pastel palette, vibrant warm tones, cool blue and silver |
| `{{studio_reference}}` | Anime studio style | Studio Ghibli style, Kyoto Animation style, ufotable style |
| `{{aspect}}` | Aspect ratio | 4:5 (portrait), 1:1 (square), 9:16 (phone) |
| `{{sref_code}}` | Style reference code | a style reference URL or code, or omit if unused |

### Example

```
a young female mage with long silver hair, anime illustration style, standing with hands clasped holding a glowing staff, gentle smile with soft eyes, flowing white robes with gold trim, cherry blossom garden in full bloom, soft pastel pink and white palette, Studio Ghibli style --ar 4:5 --sref --v 7
```

---

## Template 2: Storybook Illustration

```
{{scene_description}}, children's storybook illustration, {{art_style}}, {{color_mood}}, {{lighting}}, {{background_detail}} --ar {{aspect}} --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{scene_description}}` | What is happening in the scene | a small fox reading a book under a mushroom, a girl discovering a hidden door in a tree |
| `{{art_style}}` | Illustration approach | watercolor and ink, soft gouache, colored pencil sketch, digital painterly |
| `{{color_mood}}` | Color atmosphere | warm golden hues, soft dreamy pastels, rich autumn tones, cool moonlit blues |
| `{{lighting}}` | Light quality | dappled sunlight through leaves, warm candlelight glow, soft diffused moonlight |
| `{{background_detail}}` | Background elements | cozy woodland interior with tiny shelves, distant castle on a hill, starry sky with crescent moon |
| `{{aspect}}` | Aspect ratio | 4:5 (book page), 1:1 (square), 3:4 (portrait) |
| `{{stylize}}` | Stylize value | 300-500 recommended for illustrations |

### Example

```
a small fox reading a book under a glowing mushroom cap, children's storybook illustration, soft watercolor and ink style, warm golden hues, dappled sunlight filtering through the forest canopy, cozy woodland interior with tiny shelves and hanging lanterns --ar 4:5 --s 400 --v 7
```

---

## Template 3: Anime Environment

```
{{environment_type}}, anime background art, {{season}}, {{time_of_day}}, {{weather}}, {{studio_style}}, detailed background --ar 16:9 --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{environment_type}}` | Type of environment | Japanese shrine pathway, floating sky islands, European cobblestone town, enchanted forest clearing |
| `{{season}}` | Seasonal setting | spring with cherry blossoms, summer with lush greenery, autumn with falling leaves, winter with snow |
| `{{time_of_day}}` | Lighting period | golden hour sunset, early morning haze, starry night, twilight |
| `{{weather}}` | Atmospheric condition | clear sky with fluffy clouds, gentle rain with puddles, light snowfall, misty and ethereal |
| `{{studio_style}}` | Anime studio reference | Makoto Shinkai style, Studio Ghibli background, Kyoto Animation background art |
| `{{stylize}}` | Stylize value | 300-500 recommended for anime backgrounds |

### Example

```
Japanese shrine pathway lined with torii gates, anime background art, late autumn with red maple leaves falling, golden hour sunset with warm light rays, clear sky with scattered clouds, Makoto Shinkai style, detailed background --ar 16:9 --s 450 --v 7
```

---

## Recommended Parameter Ranges

| Style | --s | --c | --ar | --style |
|-------|-----|-----|------|---------|
| Anime Character | 300-500 | 5-20 | 4:5 | default |
| Storybook Illustration | 300-500 | 5-15 | 4:5 | default |
| Anime Environment | 300-500 | 0-15 | 16:9 | default |
| Chibi/Cute | 350-550 | 10-25 | 1:1 | cute |
| Dark/Edgy Anime | 300-450 | 10-25 | 4:5 | default |
| Anime Film Still | 250-400 | 0-10 | 16:9 | default |

---

## Tips / 技巧

- **Reference a studio style** — Naming a studio (Ghibli, ufotable, Makoto Shinkai) is the most powerful way to set the anime look
- **Use `--sref` for style consistency** — Style references help lock in a specific anime aesthetic across multiple generations
- **Higher stylize values suit anime** — Anime styles benefit from `--s 300-500` since the look is inherently stylized
- **Background art loves 16:9** — Anime environment shots work best in a wide format
- **Separate character from background** — Describe the character fully, then the background, for clearer composition
- **Specify the art medium** — "Watercolor and ink" or "digital painterly" gives Midjourney a clear rendering target
