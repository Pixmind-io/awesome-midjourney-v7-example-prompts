# Midjourney V7 Prompts — 63+ Copy-Paste Examples with Images

[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
[![GitHub stars](https://img.shields.io/github/stars/yourusername/awesome-midjourney-v7?style=social)](https://github.com/yourusername/awesome-midjourney-v7)
[![Last Updated](https://img.shields.io/badge/Updated-2026--05-blue)](https://github.com/yourusername/awesome-midjourney-v7)
[![中文](https://img.shields.io/badge/中文-README_CN-red)](README_CN.md)

> The largest open-source collection of **Midjourney V7 prompts** with generated images. 63+ tested, copy-paste ready prompt examples across 10 categories — photography, cinematic, architecture, anime, 3D, concept art, and more. Includes parameter guides, fill-in-the-blank templates, and a complete prompt engineering tutorial. Bilingual English + 中文.

> 最大的开源 **Midjourney V7 提示词**合集，含生成效果图。63+ 条经过测试、可直接复制的提示词示例，覆盖 10 个分类 — 摄影、电影、建筑、动漫、3D、概念艺术等。包含参数指南、填空模板和完整的提示词工程教程。中英双语。

---

## Quick Start — Your First Midjourney V7 Prompt

Copy this prompt and paste it into Midjourney:

```
/imagine a golden retriever playing in autumn leaves, warm afternoon light, photorealistic --ar 16:9 --s 250 --v 7
```

**Don't have Midjourney?** Generate similar AI images with [Pixmind](https://www.pixmind.io/) — free credits on signup, supports Midjourney V7 and other top models.

📖 [Getting Started Guide](guide/getting-started.md) | [V7 New Features](guide/v7-new-features.md) | [Prompt Structure Formula](guide/prompt-structure.md)

---

## Midjourney V7 Prompts by Category

Every prompt includes full parameter strings, tips, and a generated example image.

| Category | Prompts | EN | 中文 |
|----------|---------|-----|------|
| **Photography** — portraits, street, product shots | 10 | [EN](prompts/photography.md) | [中文](prompts/photography_cn.md) |
| **Cinematic** — drone shots, film stills, video-ready | 7 | [EN](prompts/cinematic.md) | [中文](prompts/cinematic_cn.md) |
| **Architecture** — interior, exterior, urban planning | 8 | [EN](prompts/architecture.md) | [中文](prompts/architecture_cn.md) |
| **Concept Art** — fantasy, sci-fi, character design | 5 | [EN](prompts/concept-art.md) | [中文](prompts/concept-art_cn.md) |
| **Anime & Illustration** — Ghibli, manga, cel shading | 5 | [EN](prompts/anime-illustration.md) | [中文](prompts/anime-illustration_cn.md) |
| **3D & Isometric** — renders, maps, exploded views | 5 | [EN](prompts/3d-isometric.md) | [中文](prompts/3d-isometric_cn.md) |
| **Nature & Landscape** — aurora, mountains, ocean | 5 | [EN](prompts/nature-landscape.md) | [中文](prompts/nature-landscape_cn.md) |
| **Product & Commercial** — luxury, cosmetics, food | 6 | [EN](prompts/product-commercial.md) | [中文](prompts/product-commercial_cn.md) |
| **Abstract & Artistic** — fluid art, fractals, glitch | 6 | [EN](prompts/abstract-artistic.md) | [中文](prompts/abstract-artistic_cn.md) |
| **Text & Typography** — posters, neon signs, logos | 6 | [EN](prompts/text-typography.md) | [中文](prompts/text-typography_cn.md) |

---

## Midjourney V7 Prompt Templates

Fill-in-the-blank templates with `{{variables}}` — customize and create your own prompts in seconds:

| Template | Best For |
|----------|----------|
| [Portrait Template](templates/portrait-template.md) | Editorial, cinematic, beauty portraits |
| [Landscape Template](templates/landscape-template.md) | Grand vistas, dramatic weather, serene nature |
| [Product Template](templates/product-template.md) | Studio shots, lifestyle, artistic product photography |
| [Architecture Template](templates/architecture-template.md) | Exterior, interior, aerial/urban planning |
| [Anime Template](templates/anime-template.md) | Character design, storybook, environment art |

---

## Midjourney V7 Parameter Guide

Learn exactly how each parameter affects your output with comparison guides:

| Parameter | Guide | What It Controls |
|-----------|-------|-----------------|
| `--s` (stylize) | [Stylize Comparison](parameters/stylize-comparison.md) | Artistic interpretation strength (0–1000) |
| `--c` (chaos) | [Chaos Comparison](parameters/chaos-comparison.md) | Variation between the 4 outputs (0–100) |
| `--q` (quality) | [Quality Comparison](parameters/quality-comparison.md) | Detail level vs GPU cost (0.5, 1, 2, 4) |
| `--ar` | [Aspect Ratio Guide](parameters/aspect-ratio-guide.md) | Frame shape by platform (16:9, 4:5, etc.) |
| `--oref` | [Omni Reference Guide](parameters/oref-omni-reference.md) | Character/object/vehicle consistency (V7 new) |
| `--exp` | [Experimental Guide](parameters/exp-experimental.md) | Advanced tone mapping (V7 new, 0–100) |

---

## Prompt Engineering Guide

| Guide | What You'll Learn |
|-------|-------------------|
| [Getting Started](guide/getting-started.md) | Write your first V7 prompt — basics in 2 minutes |
| [V7 New Features](guide/v7-new-features.md) | Video, Draft Mode, Omni Reference, Personalization |
| [Prompt Structure](guide/prompt-structure.md) | The 6-part formula: Subject → Action → Environment → Lighting → Style → Parameters |
| [Common Mistakes](guide/common-mistakes.md) | Top 5 mistakes that waste GPU time |
| [SREF Style Codes](guide/sref-style-codes.md) | Community-discovered style reference codes |

---

## The 6-Part Midjourney V7 Prompt Formula

```
[Subject] + [Action] + [Environment] + [Lighting] + [Style] + [Parameters]
```

**Subject goes first** (most weight) — **Parameters go last** (always).

Example:

```
a woman in a flowing emerald dress dancing on a rooftop at sunset,
warm golden hour light creating long shadows, city skyline silhouette,
cinematic, shot on Arri Alexa, film grain
--ar 16:9 --s 350 --c 10 --v 7
```

---

## V7 Parameters Quick Reference

| Parameter | Values | Default | Purpose |
|-----------|--------|---------|---------|
| `--v 7` | 7 | current | Model version |
| `--ar` | 1:1, 4:5, 9:16, 16:9, 21:9, 2:3, 3:2, 4:3 | 1:1 | Aspect ratio |
| `--s` | 0-1000 | varies | Artistic interpretation |
| `--c` | 0-100 | 0 | Variation between outputs |
| `--q` | 0.5, 1, 2, 4 | 1 | Render quality |
| `--style` | raw | default | More realistic output |
| `--no` | text, blur, etc. | none | Negative prompting |
| `--oref` | [URL] | none | Omni Reference (V7 new) |
| `--ow` | ~400 | varies | Omni Weight (V7 new) |
| `--exp` | 0-100 | 0 | Experimental aesthetics (V7 new) |
| `--sref` | code or [URL] | none | Style Reference |
| `--p` | flag | on | Personalization |
| `--seed` | 0-4294967295 | random | Reproducible results |

---

## Frequently Asked Questions

### What is Midjourney V7?
Midjourney V7 is the latest version of the AI image generation model by Midjourney, released April 2025. It features significantly improved photorealism, video generation up to 21 seconds, a new Omni Reference (`--oref`) system, and better natural language understanding compared to V6.

### How do I write a good Midjourney V7 prompt?
Follow the 6-part formula: Subject + Action + Environment + Lighting + Style + Parameters. Put your subject first (V7 weighs early words more heavily), specify lighting for 3x better results, and keep parameters at the end. See the [Prompt Structure Guide](guide/prompt-structure.md).

### What parameters are new in Midjourney V7?
V7 introduces `--oref` (Omni Reference, replaces `--cref`), `--ow` (Omni Weight), `--exp` (experimental aesthetics, 0-100), and `--q 4` (maximum quality tier). Personalization is also on by default. See [V7 New Features](guide/v7-new-features.md).

### What's the best `--s` (stylize) value for Midjourney V7?
- Product photography: 100-200
- Portraits: 250-350
- Landscapes: 250-400
- Abstract art: 500-800
Most general use cases work best at 250-400. Start there and adjust. See the [Stylize Comparison](parameters/stylize-comparison.md).

### Can I generate these images without Midjourney?
Yes — [Pixmind](https://www.pixmind.io/) offers Midjourney V7 and other top AI image models via API. Free credits on signup, no Discord needed. The example images in this repo were generated using Pixmind's API.

### Midjourney V7 vs V6 — what changed?
V7 has better photorealism, fewer hand/finger artifacts, video generation, Omni Reference, Draft Mode, Conversational Mode, and expanded stylize range (0-1000 vs 0-750). Old V6 prompts may produce different results in V7. See [V7 New Features](guide/v7-new-features.md).

---

## Data / JSON Export

Machine-readable formats for developers:

- [prompts.json](data/prompts.json) — All 63+ prompts in structured JSON
- [templates.json](data/templates.json) — All templates in structured JSON

---

## Contributing

Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md).

---

## License

[CC0 1.0 Universal](LICENSE) — Public Domain. Use freely for any purpose.

---

## About

This repository was created to help the Midjourney community master V7 prompting. The example images were generated using [Pixmind](https://www.pixmind.io/), an AI image generation API that supports Midjourney V7 and other leading models.

<p align="center">
  <a href="https://www.pixmind.io/">Powered by Pixmind — AI Image Generation API</a>
</p>
