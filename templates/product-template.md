# Product Template / 产品模板

> Fill-in-the-blank product photography and commercial templates. Replace `{{variables}}` with your own descriptions.

---

## Template 1: Studio Product Shot

```
{{product_type}} on {{surface}}, {{lighting_setup}}, {{background}}, {{style}}, product photography, photorealistic --ar {{aspect}} --s {{stylize}} --c 0 --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{product_type}}` | Product being photographed | luxury perfume bottle, artisan coffee bag, wireless headphones |
| `{{surface}}` | Surface or platform | white marble pedestal, raw concrete slab, frosted glass platform |
| `{{lighting_setup}}` | Lighting description | soft diffused studio lighting, dramatic spotlight from above, edge lighting with rim glow |
| `{{background}}` | Background setting | seamless white backdrop, gradient charcoal background, minimalist light gray |
| `{{style}}` | Visual style approach | clean minimalist, luxury high-end, modern commercial |
| `{{aspect}}` | Aspect ratio | 4:5 (social), 16:9 (banner), 1:1 (square) |
| `{{stylize}}` | Stylize value | 150-300 recommended for product shots |

### Example

```
luxury perfume bottle on white marble pedestal, soft diffused studio lighting with edge highlight, seamless white backdrop, clean minimalist, product photography, photorealistic --ar 4:5 --s 250 --c 0 --v 7
```

---

## Template 2: Lifestyle Product

```
{{product}} in {{lifestyle_setting}}, {{mood}}, {{lighting}}, {{color_palette}}, commercial lifestyle photography --ar 4:5 --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{product}}` | Product being featured | ceramic pour-over coffee set, leather weekender bag, skincare serum bottle |
| `{{lifestyle_setting}}` | Environment or context | a cozy kitchen with wooden shelves, on a sunlit windowsill, in a styled living room |
| `{{mood}}` | Emotional tone | warm and inviting, fresh and clean, sophisticated and calm |
| `{{lighting}}` | Light description | natural morning sunlight, warm golden hour glow, soft window light |
| `{{color_palette}}` | Color scheme | earthy neutrals and terracotta, soft pastels, muted sage and cream |
| `{{stylize}}` | Stylize value | 200-350 recommended for lifestyle |

### Example

```
ceramic pour-over coffee set in a cozy kitchen with wooden shelves, warm and inviting, natural morning sunlight streaming in, earthy neutrals and terracotta, commercial lifestyle photography --ar 4:5 --s 280 --v 7
```

---

## Template 3: Abstract/Artistic Product

```
{{product}} {{artistic_action}}, {{artistic_element}}, {{color_scheme}}, {{composition}}, abstract product photography --ar 1:1 --s {{stylize}} --v 7
```

### Variables

| Variable | Description | Example Values |
|----------|-------------|----------------|
| `{{product}}` | Product being featured | sneaker, smartphone, wristwatch, cosmetics bottle |
| `{{artistic_action}}` | Creative action or state | suspended in mid-air, exploding into particles, melting over edge |
| `{{artistic_element}}` | Artistic detail | surrounded by floating water droplets, enveloped in silk fabric, framed by neon light rings |
| `{{color_scheme}}` | Color approach | monochromatic blue, contrasting black and gold, iridescent holographic |
| `{{composition}}` | Layout and framing | centered symmetric composition, dynamic diagonal, rule of thirds |
| `{{stylize}}` | Stylize value | 300-500 recommended for artistic |

### Example

```
sneaker suspended in mid-air, surrounded by floating paint splashes and water droplets, contrasting black and electric blue, dynamic diagonal composition, abstract product photography --ar 1:1 --s 420 --v 7
```

---

## Recommended Parameter Ranges

| Style | --s | --c | --ar | --style |
|-------|-----|-----|------|---------|
| Clean Studio | 150-250 | 0 | 4:5, 1:1 | raw |
| Luxury/High-End | 200-300 | 0-5 | 4:5 | default |
| Lifestyle | 200-350 | 0-10 | 4:5 | default |
| Abstract/Artistic | 300-500 | 10-30 | 1:1 | default |
| Flat Lay | 150-250 | 0 | 1:1 | raw |
| E-commerce | 100-200 | 0 | 1:1 | raw |

---

## Tips / 技巧

- **Keep chaos at zero** — Product shots need consistency; use `--c 0` for studio work
- **`--style raw` for realism** — Use raw style when the product must look photorealistic
- **Describe the surface** — The surface or platform gives context and grounding to the product
- **Lighting is everything** — Product photography lives or dies by lighting; be specific about direction and quality
- **Match aspect to platform** — Use 4:5 for Instagram, 1:1 for shop listings, 16:9 for website banners
- **Separate the product visually** — Contrast the product against its background for clear recognition
