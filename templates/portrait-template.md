# Portrait Template / 人像模板

> Fill-in-the-blank portrait photography templates. Replace `{{variables}}` with your own descriptions.

---

## Template 1: Editorial Portrait

```
Editorial portrait of {{subject}}, {{clothing}}, against {{background}}, shot on {{camera}}, {{lighting}}, {{color_tone}} --ar 4:5 --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{subject}}` | Person description | a woman in her 30s, an elderly man, a young dancer |
| `{{clothing}}` | Outfit description | wearing a bold red outfit, in a tailored suit, in casual linen |
| `{{background}}` | Setting | brutalist concrete wall, garden, urban rooftop |
| `{{camera}}` | Camera reference | Hasselblad medium format, Leica M11, Sony A7R V |
| `{{lighting}}` | Light setup | soft diffused lighting, natural window light, dramatic side lighting |
| `{{color_tone}}` | Color mood | desaturated palette, warm earthy tones, cool blue tones |
| `{{stylize}}` | Stylize value | 250-400 recommended for portraits |

### Example

```
Editorial portrait of a woman in her 30s, wearing a bold red outfit, against brutalist concrete wall, shot on Hasselblad medium format, soft diffused lighting, desaturated color palette --ar 4:5 --s 350 --v 7
```

---

## Template 2: Cinematic Character Portrait

```
Cinematic portrait of {{subject}}, {{distinctive_features}}, {{environment}}, {{lighting}}, {{mood}}, {{film_style}} --ar 4:5 --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{subject}}` | Character type | a weathered explorer, a mysterious woman, a young warrior |
| `{{distinctive_features}}` | Notable details | deep wrinkles and kind eyes, a scar across left cheek, piercing blue eyes |
| `{{environment}}` | Background setting | coastal harbor at dawn, dimly lit alley, mountain overlook |
| `{{lighting}}` | Light description | golden hour backlight, dramatic chiaroscuro, soft morning light |
| `{{mood}}` | Emotional tone | contemplative, intense, serene |
| `{{film_style}}` | Film reference | documentary photography, cinematic film still, noir style |
| `{{stylize}}` | Stylize value | 250-350 recommended |

### Example

```
Cinematic portrait of an elderly fisherman, weathered hands and deep wrinkles, coastal harbor, natural window light from left, warm morning atmosphere, documentary photography style --ar 4:5 --s 300 --v 7
```

---

## Template 3: Beauty Close-Up

```
Extreme close-up portrait of {{subject}}, {{feature_focus}}, {{skin_texture}}, {{lighting}}, {{lens_effect}}, beauty photography, high-end retouching style --ar 4:5 --s 200 --style raw --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{subject}}` | Person | a woman with freckles, a model with dark skin |
| `{{feature_focus}}` | Focal feature | eyes with detailed iris, lips with natural color |
| `{{skin_texture}}` | Skin detail | dewy skin with visible pores, matte porcelain skin |
| `{{lighting}}` | Light setup | ring light, butterfly lighting, soft beauty dish |
| `{{lens_effect}}` | Lens choice | macro lens detail, 85mm portrait lens, shallow DOF |

### Example

```
Extreme close-up portrait of a woman with freckles, detailed green eyes with visible iris pattern, dewy skin with natural texture, soft beauty dish lighting, 85mm shallow depth of field, beauty photography, high-end retouching style --ar 4:5 --s 200 --style raw --v 7
```

---

## Recommended Parameter Ranges

| Style | --s | --c | --ar | --style |
|-------|-----|-----|------|---------|
| Fashion Editorial | 300-400 | 0-10 | 4:5 | default |
| Documentary | 200-300 | 0-15 | 4:5 | raw |
| Beauty/Close-up | 150-250 | 0 | 4:5 | raw |
| Character Design | 300-500 | 10-20 | 4:5 | default |
| Social Media Profile | 250-350 | 0-10 | 1:1 | default |

---

## Tips / 技巧

- **Front-load the subject** — Put the person description at the very beginning of the prompt
- **Specify lighting direction** — "light from left" is more effective than just "soft lighting"
- **Camera references help** — Naming a camera brand (Hasselblad, Leica) subtly affects depth-of-field and color
- **`--style raw` for accuracy** — Use when you want the most photorealistic, least "Midjourney-styled" result
- **Keep chaos low** — Portraits benefit from consistency; keep `--c` under 20
