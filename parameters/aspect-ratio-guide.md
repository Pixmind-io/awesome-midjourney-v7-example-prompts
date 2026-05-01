# Aspect Ratio Guide (--ar) / 宽高比指南

> Choosing the right aspect ratio for your Midjourney V7 images.

## What It Does

The `--ar` (aspect ratio) parameter controls the width-to-height ratio of your generated image. This determines whether your image is square, landscape, portrait, or cinematic in shape.

Choosing the right aspect ratio is critical because it affects:
- **Composition:** How elements are arranged within the frame
- **Platform compatibility:** Whether the image fits specific social media or print requirements
- **Subject suitability:** Some subjects naturally fit certain ratios better

## Valid Range and Default

| Property | Value |
|----------|-------|
| **Parameter** | `--ar` |
| **Format** | `width:height` (e.g., `--ar 16:9`) |
| **Default** | 1:1 (square) |

## Common Aspect Ratios

| Aspect Ratio | Shape | Common Names | Best For |
|-------------|-------|--------------|----------|
| **1:1** | Square | Instagram square | Instagram feed posts, profile photos, product shots, album covers |
| **4:5** | Portrait (moderate) | Instagram portrait | Instagram portrait posts, fashion photography, headshots, Pinterest tall pins |
| **9:16** | Tall portrait | Vertical video | Instagram Stories, TikTok, Snapchat, YouTube Shorts, mobile wallpapers, phone screens |
| **16:9** | Widescreen landscape | Standard widescreen | YouTube thumbnails, presentations, cinematic stills, desktop wallpapers, blog headers |
| **21:9** | Ultra-widescreen | Ultrawide / cinematic | Cinematic panoramas, dramatic landscapes, film stills, ultrawide wallpapers |
| **2:3** | Portrait (classic) | Classic portrait | Pinterest pins, book covers, posters, magazine pages, portrait photography prints |
| **3:2** | Landscape (classic) | Standard photo | Standard photography prints, DSLR default, framed photos, editorial |
| **4:3** | Moderate landscape | Classic TV / presentation | Architecture photography, presentations, older display formats, product catalogs |

## Recommendations by Use Case

### Social Media

| Platform | Recommended AR | Notes |
|----------|---------------|-------|
| **Instagram Feed (Square)** | 1:1 | Classic Instagram format |
| **Instagram Feed (Portrait)** | 4:5 | Takes up more screen space, higher engagement |
| **Instagram Stories / Reels** | 9:16 | Full-screen vertical format |
| **TikTok** | 9:16 | Vertical full-screen |
| **Pinterest** | 2:3 or 4:5 | Tall images get more visibility in feeds |
| **YouTube Thumbnails** | 16:9 | Standard widescreen |
| **Twitter / X** | 16:9 or 2:3 | Both work; landscape for cards, portrait for standalone |
| **LinkedIn** | 16:9 | Professional, presentation-style |
| **Facebook** | 4:5 or 16:9 | Portrait for feed, landscape for cover/header |

### Photography and Print

| Use Case | Recommended AR | Notes |
|----------|---------------|-------|
| **Portrait Photography** | 2:3 or 4:5 | Classic portrait proportions |
| **Landscape Photography** | 16:9 or 3:2 | Wide formats emphasize sweeping vistas |
| **Architecture** | 4:3 or 16:9 | Captures structures with context |
| **Product Photography** | 1:1 or 4:5 | Clean, focused on the product |
| **Fine Art Prints** | 2:3 or 3:2 | Standard print sizes |
| **Posters** | 2:3 | Standard poster proportion |
| **Book Covers** | 2:3 | Industry standard book cover ratio |

### Cinematic and Creative

| Use Case | Recommended AR | Notes |
|----------|---------------|-------|
| **Cinematic Stills** | 21:9 or 16:9 | 21:9 for dramatic widescreen feel |
| **Panoramic Landscapes** | 21:9 | Emphasizes horizontal sweep |
| **Concept Art** | 16:9 | Industry standard for games and film |
| **Storyboards** | 16:9 or 2:3 | Match the target medium |
| **Wallpapers (Desktop)** | 16:9 | Standard desktop resolution |
| **Wallpapers (Phone)** | 9:16 | Standard phone screen |

## Tips for Choosing Aspect Ratio

1. **Match the destination.** Always generate in the exact ratio required by your target platform. Cropping later loses content and quality.
2. **Consider the subject.** Tall subjects (people, towers, trees) suit portrait ratios. Wide subjects (landscapes, group shots, interiors) suit landscape ratios.
3. **Use 1:1 for maximum flexibility.** If you need an image that works across multiple platforms, square is the safest default.
4. **4:5 over 1:1 for Instagram reach.** Portrait images take up more screen space on mobile, leading to higher engagement.
5. **21:9 for drama.** The ultrawide format creates an inherently cinematic, immersive feel. Use it for landscapes, action scenes, and dramatic compositions.
6. **Prompt for the ratio.** Adjust your prompt to match the aspect ratio. A wide landscape prompt should pair with `--ar 16:9`; a tall vertical composition should pair with `--ar 9:16`.

## V7-Specific Notes

- V7 handles all aspect ratios with better composition intelligence than previous versions. The model places subjects more naturally within non-square frames.
- Extreme ratios (very wide or very tall) produce more coherent results in V7. Previous versions sometimes struggled with subjects at the edges of extreme aspect ratios.

## Example Prompts

```
# Instagram portrait post
woman in autumn coat walking through fallen leaves --ar 4:5 --s 250

# YouTube thumbnail
futuristic workspace with holographic displays --ar 16:9 --s 200

# Cinematic landscape
vast desert canyon at golden hour, single traveler on ridge --ar 21:9 --s 400

# Pinterest pin
bohemian living room with plants and natural light --ar 2:3 --s 300

# TikTok / Story
fashion model striking a pose against neon-lit wall --ar 9:16 --s 300

# Product shot
luxury perfume bottle on reflective black surface --ar 1:1 --s 150
```
