# Landscape Template / 风景模板

> Fill-in-the-blank landscape and environment templates. Replace `{{variables}}` with your own descriptions.

---

## Template 1: Grand Landscape

```
{{time_of_day}} over {{terrain}}, {{weather_atmosphere}}, {{vegetation}}, {{camera_perspective}}, {{film_style}} --ar 16:9 --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{time_of_day}}` | Time and lighting period | golden hour, blue hour, midday sun, twilight |
| `{{terrain}}` | Landform description | rolling green hills, jagged mountain peaks, vast desert dunes |
| `{{weather_atmosphere}}` | Weather and mood | dramatic storm clouds gathering, light mist drifting, clear skies |
| `{{vegetation}}` | Plant life detail | ancient pine forests, wildflower meadows, autumn maple trees |
| `{{camera_perspective}}` | Shot type and angle | wide-angle panoramic view, aerial drone shot, low-angle foreground |
| `{{film_style}}` | Photographic style reference | shot on Kodak Portra 400, National Geographic photography, cinematic wide shot |
| `{{stylize}}` | Stylize value | 250-400 recommended for landscapes |

### Example

```
golden hour over rolling green hills, light mist drifting through the valley, ancient pine forests along the ridge, wide-angle panoramic view, National Geographic landscape photography --ar 16:9 --s 350 --v 7
```

---

## Template 2: Dramatic Weather Scene

```
{{weather_event}} over {{location}}, {{dramatic_element}}, {{season}}, {{photography_style}}, {{color_mood}} --ar 16:9 --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{weather_event}}` | Primary weather phenomenon | supercell thunderstorm, blinding blizzard, volcanic lightning storm |
| `{{location}}` | Geographic setting | the Great Plains, Norwegian fjord coastline, Sahara desert |
| `{{dramatic_element}}` | Striking visual detail | lightning striking the horizon, massive wall cloud, rain shafts visible |
| `{{season}}` | Seasonal context | late autumn, peak winter, early spring |
| `{{photography_style}}` | Photographic approach | storm chasing photography, moody long exposure, high dynamic range |
| `{{color_mood}}` | Color palette | deep purple and orange contrast, muted gray-blue tones, warm amber glow |
| `{{stylize}}` | Stylize value | 300-450 recommended for dramatic scenes |

### Example

```
supercell thunderstorm over the Great Plains, lightning striking the horizon with wall cloud forming, late spring, storm chasing photography, deep purple and orange contrast --ar 16:9 --s 380 --v 7
```

---

## Template 3: Serene Nature

```
Calm {{water_feature}} surrounded by {{vegetation}}, {{time_of_day}} light, {{atmosphere}}, nature photography, {{color_palette}} --ar 16:9 --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{water_feature}}` | Body of water | mountain lake, gentle stream, reflective pond, winding river |
| `{{vegetation}}` | Surrounding plant life | tall reeds and willow trees, dense bamboo grove, moss-covered rocks |
| `{{time_of_day}}` | Lighting period | early morning, golden hour, soft overcast afternoon |
| `{{atmosphere}}` | Mood and air quality | still air with perfect reflections, light fog hugging the water, dew drops on leaves |
| `{{color_palette}}` | Color description | soft pastel greens and blues, warm golden earth tones, cool silver and jade |
| `{{stylize}}` | Stylize value | 200-350 recommended for serene scenes |

### Example

```
Calm mountain lake surrounded by tall pine trees and wildflowers, early morning light, light fog hugging the water surface, nature photography, soft pastel greens and blues --ar 16:9 --s 280 --v 7
```

---

## Recommended Parameter Ranges

| Style | --s | --c | --ar | --style |
|-------|-----|-----|------|---------|
| Grand Landscape | 250-400 | 0-15 | 16:9 | default |
| Dramatic Weather | 300-450 | 10-25 | 16:9 | default |
| Serene Nature | 200-350 | 0-10 | 16:9 | raw |
| Forest/Woodland | 250-350 | 0-15 | 16:9 | default |
| Desert/Arid | 250-400 | 5-20 | 16:9 | default |
| Coastal/Ocean | 200-350 | 0-15 | 16:9 | default |

---

## Tips / 技巧

- **Use 16:9 aspect ratio** — Landscape compositions almost always benefit from a wide frame
- **Layer your depth** — Mention foreground, midground, and background elements for richer scenes
- **Weather adds drama** — Even simple scenes become striking with fog, mist, or storm clouds
- **Time of day matters** — "Golden hour" and "blue hour" are powerful shorthand for beautiful lighting
- **Photography references ground the style** — Naming a magazine or film stock helps Midjourney choose the right rendering approach
- **Lower chaos for accuracy** — Landscapes with specific compositions work best with `--c` under 20
