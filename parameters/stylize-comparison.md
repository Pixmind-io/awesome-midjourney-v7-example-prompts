# Stylize Parameter (--s) / 风格化参数

> How the --stylize parameter affects your Midjourney V7 images.

## What It Does

The `--stylize` (or `--s`) parameter controls how much artistic freedom Midjourney has when generating your image. A lower value produces results that closely follow your prompt with minimal embellishment. A higher value lets Midjourney inject more of its own aesthetic judgment, resulting in more artistic and painterly outputs.

Think of it as a slider between "photographic accuracy" and "artistic interpretation."

## Valid Range and Default

| Property | Value |
|----------|-------|
| **Parameter** | `--s` or `--stylize` |
| **Range** | 0 -- 1000 |
| **Default** | 100 |
| **V6 Max** | 750 (expanded in V7) |

**V7 Note:** Midjourney V7 expanded the stylize range from a maximum of 750 (in V6) to 1000, giving users even more room for highly artistic outputs.

## Comparison by Range

| Range | Effect | Best For |
|-------|--------|----------|
| 0 -- 100 | Very realistic, minimal AI styling | Product photos, documentation, technical imagery |
| 100 -- 200 | Subtle enhancement, clean look | Real estate, corporate documentation, catalog shots |
| 200 -- 300 | Balanced artistry (recommended default zone) | Most general use cases, versatile results |
| 300 -- 400 | Enhanced artistic quality | Portraits, landscapes, editorial photography |
| 400 -- 600 | Notably artistic, visible style injection | Creative projects, concept art, illustration |
| 600 -- 800 | Highly stylized, strong aesthetic character | Abstract art, experimental visuals, mood pieces |
| 800 -- 1000 | Maximum artistic freedom, interpretive results | Painterly effects, surreal art, expressive compositions |

## Recommendations by Use Case

| Use Case | Recommended Range | Why |
|----------|-------------------|-----|
| **Product Photography** | 100 -- 200 | Keeps the product accurate and clean |
| **Portrait Photography** | 250 -- 350 | Adds flattering artistic touches without distortion |
| **Landscape** | 250 -- 400 | Enhances natural beauty while maintaining realism |
| **Concept Art** | 350 -- 550 | Gives the AI room to interpret creatively |
| **Abstract Art** | 500 -- 800 | Embraces stylization as a feature, not a side effect |
| **Experimental / Surreal** | 800 -- 1000 | Pushes the model into highly interpretive territory |
| **Architecture** | 150 -- 250 | Maintains structural accuracy with subtle polish |
| **Fashion** | 200 -- 350 | Balances realism with editorial flair |

## Tips

1. **Start at 250.** This is a reliable middle ground for most prompts. Adjust from there based on results.
2. **Adjust in increments of 50 -- 100.** Smaller changes (e.g., from 250 to 260) are rarely noticeable. Move in meaningful steps.
3. **Pair with descriptive prompts.** High stylize values work best when your prompt is rich in descriptive language. The AI has more raw material to work with.
4. **Use lower values for accuracy-critical work.** If you need specific details (text, logos, exact compositions), keep stylize under 200.
5. **Combine with --q for final output.** A stylize of 300 -- 400 paired with `--q 2` produces excellent final-quality artistic images.
6. **V7 expanded range.** If you were used to maxing out at 750 in V6, try values between 800 -- 1000 in V7 for new levels of artistic expression.

## Example Prompts

```
# Realistic product shot
sleek water bottle on marble surface, studio lighting --s 100 --q 2

# Artistic portrait
woman in golden hour light, contemplative expression --s 350 --ar 4:5

# Surreal dreamscape
floating islands above an ocean of clouds --s 900 --ar 16:9
```
