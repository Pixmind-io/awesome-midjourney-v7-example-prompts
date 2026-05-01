# Chaos Parameter (--c) / 混沌参数

> How the --chaos parameter controls variation in your Midjourney V7 image grids.

## What It Does

The `--chaos` (or `--c`) parameter controls how much variation Midjourney introduces between the four images in your initial grid. A low chaos value produces four similar, closely related images. A high chaos value produces four very different interpretations of your prompt.

Chaos does not affect the quality of individual images -- it affects how diverse the four options are from each other.

## Valid Range and Default

| Property | Value |
|----------|-------|
| **Parameter** | `--c` or `--chaos` |
| **Range** | 0 -- 100 |
| **Default** | 0 |

## Comparison by Range

| Range | Variation Level | Effect | Best For |
|-------|----------------|--------|----------|
| 0 -- 10 | Minimal variation | All four images are closely related, nearly identical compositions | Product shots, consistency work, refining a specific concept |
| 15 -- 30 | Moderate variation | Noticeable differences in composition, angle, and mood | Creative work, exploring a theme, editorial photography |
| 40 -- 60 | High variation | Significantly different interpretations of the same prompt | Ideation, brainstorming, exploring visual directions |
| 70 -- 100 | Maximum variation | Wildly different results; each image is a unique take | Experimental art, discovering unexpected directions, breaking creative blocks |

## Recommendations by Use Case

| Use Case | Recommended Range | Why |
|----------|-------------------|-----|
| **Product Consistency** | 0 -- 5 | Ensures all variations stay true to the product concept |
| **Brand Photography** | 5 -- 15 | Small variations for A/B testing while maintaining brand cohesion |
| **Portrait Sessions** | 10 -- 25 | Subtle differences in pose, lighting, and expression |
| **Concept Exploration** | 30 -- 50 | Cast a wider net when exploring visual directions |
| **Mood Boards** | 40 -- 60 | Generates diverse imagery that still relates to the theme |
| **Creative Brainstorming** | 60 -- 80 | Maximizes the chance of discovering a surprising direction |
| **Experimental Art** | 80 -- 100 | Embraces unpredictability for truly unique results |
| **Architecture** | 10 -- 20 | Keeps structural integrity while exploring angles |
| **Social Media Content** | 5 -- 15 | Consistent look across a content series |

## V7-Specific Notes

- V7 handles high chaos values more coherently than previous versions. Even at `--c 100`, the results tend to maintain a stronger connection to the original prompt.
- The interaction between `--chaos` and `--stylize` is more pronounced in V7. High chaos + high stylize can produce dramatically varied artistic results.

## Tips

1. **For professional work, keep chaos under 20.** This gives you slight variations without losing control over the output.
2. **Use high chaos for discovery, then refine.** Run a high-chaos generation to explore options, then use a low-chaos generation to refine the direction you like.
3. **Chaos is free.** It does not cost extra GPU time. Use it liberally during the exploration phase.
4. **Combine with --s for creative exploration.** `--c 50 --s 400` is an excellent combination for discovering unexpected creative directions.
5. **Reroll with different chaos values.** If you like a result but want more or less variation, adjust chaos and reroll the same prompt.
6. **Low chaos does not mean low quality.** A chaos of 0 still produces excellent images -- they are just more similar to each other.

## Example Prompts

```
# Consistent product variations
minimalist desk lamp, white background, studio lighting --c 5 --s 150

# Creative exploration
futuristic cityscape at sunset, neon reflections --c 50 --s 350

# Maximum creative discovery
ancient temple overgrown with bioluminescent plants --c 90 --s 500 --ar 16:9
```
