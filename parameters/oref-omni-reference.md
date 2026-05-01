# Omni Reference (--oref) / 全能参考参数

> Midjourney V7's unified reference system for character, object, and style consistency.

## What It Does

The `--oref` (omni reference) parameter is a V7 feature that lets you provide a reference image to guide the generation. It replaces and significantly expands on the previous `--cref` (character reference) system. While `--cref` only worked for human faces, `--oref` works on a wide range of subjects:

- **Characters** (faces, bodies, outfits)
- **Objects** (products, props, furniture)
- **Vehicles** (cars, bicycles, spacecraft)
- **Creatures** (animals, monsters, fantastical beings)
- **Environments** (architectural styles, interior design)

This makes it the go-to reference tool for maintaining consistency across a series of images.

## Syntax and Parameters

| Property | Value |
|----------|-------|
| **Parameter** | `--oref` |
| **Syntax** | `--oref [image URL]` |
| **Weight Parameter** | `--ow` (omni weight) |
| **--ow Range** | 0 -- 1000 |
| **Recommended --ow** | ~400 (community consensus) |

### Basic Usage

```
your prompt here --oref https://example.com/reference-image.jpg
```

### With Weight Control

```
your prompt here --oref https://example.com/reference-image.jpg --ow 400
```

## How --ow (Omni Weight) Works

The `--ow` parameter controls how closely the output adheres to the reference image:

| --ow Range | Adherence Level | Effect |
|-----------|----------------|--------|
| 0 -- 100 | Very loose | Reference is a vague suggestion; output may differ significantly |
| 100 -- 300 | Moderate | Reference influences the result but allows creative interpretation |
| **300 -- 500** | **Balanced (recommended)** | **Strong adherence to reference while maintaining prompt fidelity** |
| 500 -- 700 | Strong | Output closely matches the reference; prompt details may be deprioritized |
| 700 -- 1000 | Very strong | Near-exact replication of the reference; creative freedom is minimal |

The community has converged on `--ow 400` as a reliable starting point for most use cases.

## Comparison: --oref vs. Old --cref

| Feature | --cref (Old) | --oref (V7) |
|---------|-------------|-------------|
| **Subject Types** | Human faces only | Characters, objects, vehicles, creatures, environments |
| **Weight Control** | --cw (0-100) | --ow (0-1000) with finer granularity |
| **Body Consistency** | Limited, face-focused | Full body, outfit, and pose consistency |
| **Object Support** | None | Full support for any object type |
| **Non-Human Subjects** | Not supported | Fully supported (animals, creatures, vehicles) |
| **Style Transfer** | Not designed for this | Can be used for style and tone referencing |
| **Multiple References** | Limited | Improved multi-reference support |

## Recommendations by Use Case

| Use Case | Recommended --ow | Tips |
|----------|-------------------|------|
| **Character Consistency** | 350 -- 500 | Use a clear, well-lit reference image of the character |
| **Product Variations** | 300 -- 450 | Front-facing product shot works best as reference |
| **Outfit Consistency** | 400 -- 550 | Include full outfit in the reference; prompt for the new pose/scene |
| **Vehicle Consistency** | 350 -- 500 | Side-angle reference gives the most consistent results |
| **Creature / Animal** | 400 -- 500 | Close-up reference for facial features, full-body for overall shape |
| **Style Transfer** | 200 -- 350 | Lower weight preserves the prompt's subject while borrowing style |
| **Environmental Consistency** | 250 -- 400 | Reference a specific architectural or interior style |
| **Pose Reference** | 300 -- 450 | Combine with descriptive pose prompts for best results |

## Tips for Getting Best Results

1. **Use high-quality reference images.** The better your reference, the better the output. Blurry, poorly lit, or cluttered references produce inferior results.
2. **Clean backgrounds work best.** A reference image with a plain or simple background helps Midjourney isolate the subject.
3. **Start with --ow 400.** This is the community-tested sweet spot. Adjust up for more adherence, down for more creative freedom.
4. **One concept per reference.** If you need character consistency AND style consistency, use separate approaches rather than cramming everything into one reference.
5. **Match the reference angle.** If your reference is a front-facing portrait, the output will be strongest when the prompt also implies a front-facing composition.
6. **--oref is not --sref.** Use `--oref` for subject/object consistency. Use `--sref` (style reference) for aesthetic style guidance. They can be combined.
7. **Iterate on weight.** If the result is too similar to the reference, lower `--ow`. If it is not similar enough, raise it. Adjust in increments of 50 -- 100.
8. **Multiple references.** You can use multiple `--oref` parameters to combine references (e.g., face from one image, outfit from another).

## V7-Specific Notes

- `--oref` is one of V7's headline features and represents a major leap in reference-based generation.
- The system is more robust than `--cref` and handles edge cases (unusual angles, partial views) much better.
- Results with `--oref` are more consistent across rerolls compared to the old `--cref` system.

## Example Prompts

```
# Character consistency across scenes
warrior standing on a cliff edge overlooking a battlefield at sunset --oref https://example.com/character.jpg --ow 400 --ar 16:9

# Product variation
sneaker design, floating against gradient background, studio lighting --oref https://example.com/product.jpg --ow 350 --ar 1:1

# Style transfer
city street scene in the style of the reference --oref https://example.com/painting.jpg --ow 250 --s 300 --ar 16:9

# Vehicle consistency
sports car driving through neon-lit Tokyo streets at night --oref https://example.com/car.jpg --ow 450 --ar 21:9
```
