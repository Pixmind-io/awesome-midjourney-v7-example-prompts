# Experimental Parameter (--exp) / 实验性参数

> Midjourney V7's undocumented experimental aesthetics parameter for advanced tone mapping.

## What It Does

The `--exp` (experimental) parameter is a V7-specific, community-discovered parameter that influences the aesthetic tone mapping and visual character of generated images. It is not officially documented by Midjourney, but has been identified and tested by the community through experimentation.

At low values, `--exp` produces subtle shifts in color grading and tone. At higher values, it introduces more dramatic aesthetic transformations that can range from beautifully unexpected to chaotic and unpredictable.

## Valid Range and Default

| Property | Value |
|----------|-------|
| **Parameter** | `--exp` |
| **Range** | 0 -- 100 |
| **Default** | 0 (inactive) |
| **Status** | Undocumented / community-discovered |

## Comparison by Range

| Range | Effect | Predictability | Best For |
|-------|--------|---------------|----------|
| **0 -- 10** | Very subtle tone shifts, barely perceptible | High | Slight color grading adjustments |
| **10 -- 25** | Noticeable aesthetic enhancement, refined look | High | Enhancing mood, adding cinematic color grading |
| **25 -- 40** | Stronger aesthetic character, visible style injection | Moderate | Creative work, artistic projects |
| **40 -- 60** | Dramatic tone mapping, pushed aesthetics | Moderate-Low | Experimental photography, bold art |
| **60 -- 80** | Highly transformed visuals, strong stylization | Low | Abstract work, pushing boundaries |
| **80 -- 100** | Maximum experimental output, unpredictable | Very Low | Pure experimentation, discovering new aesthetics |

## Recommendations by Use Case

| Use Case | Recommended Range | Notes |
|----------|-------------------|-------|
| **Subtle Enhancement** | 5 -- 15 | Adds a gentle polish without changing the image's character |
| **Cinematic Color Grading** | 15 -- 25 | Produces film-like color tones and contrast curves |
| **Editorial Photography** | 10 -- 20 | Enhances the professional, magazine-quality feel |
| **Mood Enhancement** | 15 -- 30 | Intensifies the emotional tone of the image |
| **Artistic Exploration** | 30 -- 50 | Noticeably transforms the aesthetic; good for concept art |
| **Bold Creative Work** | 40 -- 60 | Strong aesthetic personality; works well with abstract subjects |
| **Pure Experimentation** | 60 -- 100 | Expect the unexpected; results vary wildly between rerolls |

## V7-Specific Notes

- This parameter is unique to V7 and was not present in any previous Midjourney version.
- It is **not officially documented** by Midjourney. It was discovered by the community through parameter testing.
- Behavior may change with V7 updates, as Midjourney has not committed to supporting this parameter.
- Because it is undocumented, its exact internal mechanism is unclear. The community's best understanding is that it influences tone mapping, color grading, and aesthetic processing in the final stages of generation.

## Tips for Testing --exp

1. **Keep it under 25 for consistent results.** Below 25, the effects are generally predictable and enhance rather than disrupt the image.
2. **Above 25 is a creative gamble.** Higher values can produce stunning results or strange artifacts. Be prepared to reroll.
3. **Test with a known prompt first.** Before using `--exp` on an important prompt, test it on something simple to see how the current version behaves.
4. **Combine with --s carefully.** High `--exp` + high `--s` can produce extreme results. Consider balancing with a lower stylize value.
5. **Use --q 0.5 for testing.** When experimenting with different `--exp` values, use lower quality to save GPU time while you find the right range.
6. **Document what works.** Since this parameter is undocumented, keep notes on which values produce results you like. Behavior may vary by prompt type.
7. **Reroll multiple times at higher values.** Above 40, each reroll can produce significantly different results. Generate several options.
8. **Pair with --c for maximum exploration.** `--exp 50 --c 50` combined gives you both aesthetic variation and compositional variation in one grid.
9. **Do not rely on it for client work.** Since this parameter is undocumented and its behavior may change, avoid depending on it for critical deliverables.

## Understanding the Risk

Because `--exp` is not an official parameter:

- **It may stop working** in a future V7 update without notice.
- **Its behavior may change** -- a value that produces great results today might produce different results tomorrow.
- **It is not guaranteed to be supported** in future Midjourney versions.
- **Use it for personal exploration** and creative experimentation, not for workflows that require reproducibility.

## Example Prompts

```
# Subtle cinematic enhancement
city street at dusk, rain-slicked pavement reflecting neon signs --exp 15 --s 250 --ar 16:9

# Mood-enhanced portrait
woman reading by a window, overcast afternoon light --exp 20 --s 300 --ar 4:5

# Artistic exploration
underwater coral reef with bioluminescent creatures --exp 40 --s 400 --ar 16:9

# Bold experimental
abstract fluid dynamics, iridescent colors merging --exp 75 --s 600 --ar 1:1

# Maximum experimentation
surreal garden where flowers are made of glass and light --exp 90 --c 60 --s 800 --ar 21:9
```
