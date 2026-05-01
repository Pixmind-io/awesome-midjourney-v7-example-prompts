# V7 New Features / V7 新功能详解

> Complete guide to what's new in Midjourney V7 compared to V6.

---

## Overview

V7 was released on **April 3, 2025** and became the default model on **June 17, 2025**. It is described as a "ground-up rework" with major improvements across the board.

---

## Major New Features

### 1. Video Generation

| Detail | Info |
|--------|------|
| Max length | Up to 21 seconds |
| Quality by length | 5s = excellent, 10s = good, 15s = decent, 21s = mixed |
| Aspect ratios | Multiple supported |
| Camera movements | Smooth, cinematic quality |

V7 is the **first Midjourney model to support video generation**. Use camera movement keywords in your prompts:

| Keyword | Effect |
|---------|--------|
| `FPV flight` | First-person drone racing |
| `Tracking shot` | Camera follows subject |
| `Orbital` | 360-degree rotation |
| `Crane down` | Descending aerial |
| `Push-in` | Moving closer slowly |
| `Low angle` | Ground-level looking up |

---

### 2. Draft Mode

- **10x faster** generation
- **Half the GPU cost**
- Lower resolution output for rapid prototyping
- Can upscale and enhance later
- Perfect for iterating on prompt ideas before committing to full-quality renders

---

### 3. Conversational Mode

- Interactive, chat-like prompting workflow
- Say "make it winter" and it updates the scene while keeping the same composition
- Voice input supported
- Enables iterative refinement without rewriting entire prompts

---

### 4. Personalization (`--p`)

- **Turned on by default** for the first time in V7
- Requires rating ~200 images to build your aesthetic profile
- Learns your visual preferences over time
- Produces output more aligned with your taste

---

### 5. Omni Reference (`--oref`)

V7-exclusive feature that replaces and extends V6's `--cref`:

| Feature | Old (--cref) | New (--oref) |
|---------|-------------|-------------|
| Characters | Humans only | Characters, objects, vehicles, creatures |
| Weight control | Limited | `--ow` parameter (community recommends ~400) |
| Versatility | Face-only | Full-body and non-human subjects |
| Compatibility | Standalone | Works with --p, --s, --sref, moodboards |

Usage:
```
/imagine prompt text --oref [image URL] --ow 400 --v 7
```

See the [Omni Reference Guide](../parameters/oref-omni-reference.md) for full details.

---

### 6. Experimental Parameter (`--exp`)

- Range: 0-100
- Adds advanced tone mapping and detail enhancement
- **Best kept under 25** for consistent results
- Over 25 produces unpredictable but creative outputs
- Community-discovered parameter, not officially documented

See the [Experimental Parameter Guide](../parameters/exp-experimental.md) for full details.

---

### 7. Higher Quality Tier (`--q 4`)

- New quality level beyond `--q 2`
- Maximum refinement at higher GPU cost
- Best for final renders where every detail matters

---

## Image Quality Improvements

| Aspect | V6 | V7 |
|--------|----|----|
| Photorealism | Good, occasional artifacts | Exceptional, fewer issues |
| Skin textures | Decent | Significantly improved |
| Fabric details | Acceptable | Much more realistic |
| Light and shadow | Good | Superior |
| Composition | Good | Better balanced |
| Hands/fingers | Problematic | Fewer weird artifacts |

---

## Prompt Understanding Improvements

V7 is **"much smarter with text prompts"** per community consensus:

- Understands natural language better than keyword stuffing
- Knows what "golden hour" and "cyberpunk aesthetic" mean without spelling out every detail
- Text rendering improved (still imperfect — keep to 2-4 words)
- Context understanding significantly enhanced

---

## Access and Pricing

| Plan | Price | Fast Hours | Key Features |
|------|-------|-----------|-------------|
| Basic | $10/month | ~200/month | Casual use |
| Standard | $30/month | 15 hours | Unlimited relaxed mode |
| Pro | $60/month | 30 hours | 12 concurrent jobs + stealth mode |
| Mega | $120/month | 60 hours | Heavy users and professionals |

All tiers get V7 access. Commercial use requires Pro subscription.

---

## V7 vs V6 Parameter Changes

- `--stylize` range expanded from 750 (V6 max) to 1000
- `--chaos` behaves more predictably
- `--weird` not adjustable in V7 web UI (produces errors)
- Aspect ratios more flexible
- **New parameters:** `--oref`, `--ow`, `--exp`, `--q 4`
- Old V6 prompts may produce different results in V7 — retest them

---

## Next Steps

- [Getting Started Guide](getting-started.md) — Basics of prompt writing
- [Prompt Structure](prompt-structure.md) — Deep dive into prompt engineering
- [Browse Prompts](../prompts/photography.md) — Ready-to-use examples
- [Parameter Guides](../parameters/stylize-comparison.md) — Master every parameter
