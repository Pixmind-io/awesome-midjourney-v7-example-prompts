# Quality Parameter (--q) / 质量参数

> How the --quality parameter balances detail, rendering time, and GPU cost in Midjourney V7.

## What It Does

The `--quality` (or `--q`) parameter controls how much GPU time Midjourney spends rendering your image. Higher values produce more detailed, refined results at the cost of increased GPU usage. Lower values render faster but with less fine detail.

This is primarily a detail and rendering depth control, not a resolution control. The output resolution is determined by `--ar` (aspect ratio), not `--q`.

## Valid Range and Default

| Property | Value |
|----------|-------|
| **Parameter** | `--q` or `--quality` |
| **Accepted Values** | 0.5, 1, 2, 4 |
| **Default** | 1 |

**V7 Note:** Quality tier 4 is new in V7. Previous versions capped at `--q 2`. This new tier provides maximum detail for final-output imagery.

## Comparison by Quality Tier

| Value | Detail Level | GPU Cost | Speed | Best For |
|-------|-------------|----------|-------|----------|
| **0.5** | Lower detail, faster rendering | ~0.5x base cost | Fastest | Drafts, quick tests, prompt iteration, composition checks |
| **1** | Default quality, good detail | 1x base cost (default) | Standard | Everyday generation, social media content, general use |
| **2** | Higher detail, refined textures | ~2x base cost | Slower | Final output, prints, professional work, presentations |
| **4** | Maximum quality, finest detail | ~4x base cost | Slowest | High-resolution prints, portfolio pieces, competition entries |

## GPU Cost Trade-offs

Understanding GPU minutes is important if you are on a limited plan:

| Quality | Relative GPU Cost | When to Use |
|---------|-------------------|-------------|
| 0.5 | Half the default cost | When iterating on prompts and composition. You will generate many images; save GPU for the final run. |
| 1 | Standard baseline | Good enough for most online use cases (social media, web, thumbnails). |
| 2 | Double the default | Worth it for anything that will be viewed at full size or printed. |
| 4 | Quadruple the default | Reserve for your best prompts after you have refined everything at lower quality. |

## Recommendations by Use Case

| Use Case | Recommended Quality | Strategy |
|----------|---------------------|----------|
| **Prompt Development** | 0.5 | Iterate fast, find the right prompt, then upgrade |
| **Social Media Posts** | 1 | Sufficient detail for screen viewing at social media sizes |
| **Blog / Web Headers** | 1 -- 2 | 1 is usually fine; use 2 if the image is the hero element |
| **Presentations** | 2 | Professional setting demands crisp detail |
| **Print (Small)** | 2 | Posters, flyers, brochures |
| **Print (Large)** | 4 | Canvas prints, trade show banners, gallery pieces |
| **Portfolio Work** | 2 -- 4 | Your best work deserves the best quality |
| **Rapid Ideation** | 0.5 | Generate many options quickly, then re-run favorites at higher quality |
| **Client Deliverables** | 2 -- 4 | Always deliver at the highest practical quality |

## V7-Specific Notes

- The new `--q 4` tier in V7 provides noticeably better texture rendering, especially in skin, fabric, and natural elements (foliage, water, stone).
- V7's base quality (`--q 1`) is comparable to V6's `--q 2` in terms of detail. The model itself produces more refined output by default.
- At `--q 0.5`, V7 still produces usable results -- better than V6's equivalent. This makes the draft-and-refine workflow more efficient.

## Tips

1. **Draft at 0.5, finalize at 2 or 4.** This is the most GPU-efficient workflow. Use low quality to nail your prompt and composition, then regenerate at high quality.
2. **Do not default to 4.** Reserve `--q 4` for images you are certain about. It is expensive and slow.
3. **Upscale separately.** Quality and upscaling are different processes. `--q` controls rendering detail; upscaling (U1, U2, etc.) controls output resolution.
4. **Quality affects fine detail, not composition.** A low-quality image will have the same composition as a high-quality one; it just will not have the same level of texture and micro-detail.
5. **Test with --q 0.5 --c 50.** Combine low quality with high chaos for rapid exploration of many different directions at minimal GPU cost.

## Example Prompts

```
# Quick draft iteration
mountain cabin in autumn forest, morning mist --q 0.5 --ar 16:9

# Social media ready
artisan coffee cup on wooden table, warm light --q 1 --ar 1:1 --s 200

# Professional print output
portrait of an elderly fisherman, dramatic lighting, weathered face --q 2 --ar 2:3 --s 300

# Maximum quality portfolio piece
ancient Japanese temple in cherry blossom season, golden hour --q 4 --ar 21:9 --s 400
```
