# Prompt Structure Guide / 提示词结构指南

> Master the art of writing effective Midjourney V7 prompts with this comprehensive guide.

---

## The Core Formula

Every effective V7 prompt follows this 6-part structure:

```
[Subject] + [Action/Movement] + [Environment] + [Lighting] + [Style] + [Parameters]
```

### Why this order matters

V7 processes prompts **sequentially**. Words at the beginning carry significantly more weight than words at the end. This means your subject should always be first, and parameters should always be last.

---

## Part 1: Subject

The single most important element. What is the main focus of your image?

```
a golden retriever
a woman in a red dress
a luxury chronograph watch
a brutalist concrete building
```

**Rules:**
- One main subject per prompt (multiple subjects confuse V7)
- Be specific: "a Persian cat" > "a cat"
- Put this FIRST in your prompt

---

## Part 2: Action/Movement

What is happening? Adds dynamism and narrative.

```
playing in autumn leaves
walking through misty streets
floating in zero gravity
racing through a redwood forest
```

**Tips:**
- Verbs are powerful: "galloping" > "running" > "moving"
- Camera movements go here for cinematic shots: "FPV drone racing", "tracking shot"

---

## Part 3: Environment

Where is this taking place? Provides context and depth.

```
in a sunlit park
on dark marble surface
in a misty mountain village
on a rooftop overlooking Tokyo
```

**Tips:**
- Foreground + background creates depth: "cobblestone street with cathedral in background"
- Seasonal/time references add atmosphere: "in autumn", "at dusk"

---

## Part 4: Lighting

Lighting has an outsized impact on image quality. Specifying lighting produces approximately **3x better results** than leaving it to default.

### Lighting Precision Scale (most to least effective)

| Level | Example | Effect |
|-------|---------|--------|
| **Detailed** | "directional golden hour sunlight creating long shadows, rim lighting on edges" | Maximum control |
| **Moderate** | "soft window light from left, warm morning atmosphere" | Good balance |
| **Basic** | "golden hour side lighting" | Better than nothing |
| **Minimal** | "well-lit" | Barely useful |
| **None** | (omit lighting) | V7 defaults |

### Effective Lighting Keywords

| Keyword | Mood |
|---------|------|
| `golden hour` | Warm, romantic, nostalgic |
| `blue hour` | Cool, calm, melancholic |
| `dramatic side lighting` | Intense, cinematic |
| `soft diffused lighting` | Gentle, editorial |
| `rim lighting` | Ethereal, heroic |
| `neon reflections` | Urban, cyberpunk |
| `volumetric light beams` | Divine, atmospheric |
| `chiaroscuro` | Dramatic, painterly |
| `single spotlight from above` | Premium, theatrical |
| `overcast soft light` | Neutral, documentary |

---

## Part 5: Style

The visual treatment and aesthetic direction.

| Style Keyword | Effect |
|---------------|--------|
| `photorealistic` | Realistic photography look |
| `cinematic` | Film still quality |
| `shot on Hasselblad` | Medium format depth |
| `shot on 35mm film` | Analog, grainy warmth |
| `editorial photography` | Magazine-quality |
| `documentary photography` | Candid, authentic |
| `concept art` | Illustration style |
| `Unreal Engine 5 render` | 3D render quality |
| `anime illustration` | Japanese animation style |
| `oil painting` | Traditional painterly |
| `watercolor` | Soft, flowing pigments |
| `architectural photography` | Building-focused composition |
| `National Geographic style` | Nature documentary quality |

---

## Part 6: Parameters

Technical settings that control the output. **Always placed at the END** of the prompt.

### Most Used Parameters

```
--ar 16:9       Aspect ratio (1:1, 4:5, 9:16, 16:9, 21:9, 2:3, 3:2, 4:3)
--s 250         Stylize: artistic freedom (0-1000)
--c 15          Chaos: variation between 4 outputs (0-100)
--q 2           Quality: detail level (0.5, 1, 2, 4)
--v 7           Model version (always include)
--style raw     More realistic, less AI styling
--no [items]    Negative prompting: exclude elements
--seed 12345    Reproducible results
```

### Advanced Parameters

```
--oref [URL]    Omni Reference (V7 new)
--ow 400        Omni Weight (V7 new)
--exp 15        Experimental aesthetics (V7 new)
--p             Personalization (V7 default on)
--sref [code]   Style Reference
--tile          Seamless tileable pattern
--stop 80       Early cutoff for softer results
--r 4           Repeat generation multiple times
--iw 1.5        Image prompt weight
```

### Multi-Prompt Syntax

Separate and weight concepts using `::`:

```
cat::2 spaceship::1          # Cat is 2x more important
forest::2 city::-0.5         # Emphasize forest, reduce city
portrait::3 abstract::1      # Primarily portrait with abstract hints
```

---

## Complete Example

Putting it all together:

```
a woman in a flowing emerald dress (Subject)
dancing on a rooftop at sunset (Action + Environment)
warm golden hour light creating long shadows, city skyline silhouette (Lighting)
cinematic, shot on Arri Alexa, film grain (Style)
--ar 16:9 --s 350 --c 10 --v 7 (Parameters)
```

As a single prompt:
```
a woman in a flowing emerald dress dancing on a rooftop at sunset, warm golden hour light creating long shadows, city skyline silhouette, cinematic, shot on Arri Alexa, film grain --ar 16:9 --s 350 --c 10 --v 7
```

---

## Quick Reference Card

| Do | Don't |
|----|-------|
| Put subject first | Bury subject in the middle |
| Use natural language | Keyword-stuff with commas |
| Specify lighting | Say "good lighting" |
| One main subject | Multiple equal subjects |
| Parameters at the end | Parameters mid-sentence |
| Short and specific | Long and vague |
| Test one parameter at a time | Change everything at once |

---

## Next Steps

- [Common Mistakes](common-mistakes.md) — What to avoid
- [Parameter Comparisons](../parameters/stylize-comparison.md) — See parameter effects
- [Ready-to-Use Prompts](../prompts/photography.md) — Copy and customize
- [Templates](../templates/portrait-template.md) — Fill-in-the-blank patterns
