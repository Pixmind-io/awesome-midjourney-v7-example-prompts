# SREF Style Codes / SREF 风格代码

> Community-discovered Style Reference codes for Midjourney V7. Use `--sref [code]` to apply a specific visual style.

---

## What is SREF?

SREF (Style Reference) lets you apply a specific visual style to your generation using a numeric code. The code represents a visual aesthetic discovered and shared by the community.

### Usage

```
/imagine your prompt here --sref 7435 --v 7
```

You can also use image URLs as style references:
```
/imagine your prompt here --sref [image URL] --v 7
```

### Combining Multiple SREFs

```
/imagine your prompt here --sref 7435 16109 --v 7
```

### Notes
- SREF codes work in both V7 and V6.1 but produce **different aesthetics** between models
- Results vary based on the rest of your prompt
- Some codes produce stronger style effects than others

---

## Popular SREF Codes

### Anime & Illustration / 动漫与插画

| Code | Style Name | Description |
|------|-----------|-------------|
| `7435` | Vibrant Anime | Bright, anime/manga aesthetic with vivid colors |
| `16048359` | Cartoon 3D Game Art | 3D cartoon/game aesthetic, Pixar-like |

### Ethereal & Fantasy / 空灵与奇幻

| Code | Style Name | Description |
|------|-----------|-------------|
| `16109` | Celestial Charm | Ethereal, heavenly feel with soft glowing elements |
| `7110` | Elegant Color Fusion | Rich, beautifully blended color palette |

### Modern & Futuristic / 现代与未来

| Code | Style Name | Description |
|------|-----------|-------------|
| `13448` | Futuristic Iridescence | Shiny, futuristic metallic with rainbow reflections |
| `7758` | Pale Blue Citrus | Cool-toned pastel aesthetic with citrus-like freshness |

---

## How to Discover New SREF Codes

### Method 1: Generate Random Codes
Add `--sref random` to any prompt and Midjourney will apply a random style. If you like the result, the code is shown in the output.

### Method 2: Use SREF Databases

| Resource | URL | Content |
|----------|-----|---------|
| SREF Database | https://sref-midjourney.com/ | Searchable database of SREF codes |
| SREFs.co | https://srefs.co/ | Largest SREF library |
| SREF Hunt | https://srefhunt.com/style/anime/ | Categorized by style (anime, etc.) |
| Midlibrary | https://midlibrary.io/tops/33-unique-sref-codes-for-animation | 33 unique animation SREFs |
| Lummi | https://www.lummi.ai/sref-codes | 80+ curated SREF codes |

### Method 3: Use Your Own Images
Use an image URL as a style reference to capture a specific visual vibe:
```
/imagine your prompt --sref https://example.com/style-image.jpg --v 7
```

---

## Tips for Using SREF / SREF 使用技巧

1. **Start with the popular codes** — they're popular because they consistently produce great results
2. **SREF strength varies** — some codes dramatically change the output, others are subtle
3. **Combine with --s** — lower stylize values let the SREF style come through more clearly
4. **Test with simple prompts first** — a simple subject like "a cat" will show you exactly what the SREF code does to the style
5. **V7 produces different results** — codes you liked in V6 will look different in V7, re-test them

---

## SREF 与 V7 的兼容性

- 所有 SREF 代码在 V7 中均可使用
- 同一代码在 V7 和 V6 中的效果略有不同
- V7 增强了 SREF 与 Personalization (`--p`) 的兼容性
- 可以同时使用 `--sref` 和 `--oref`（V7 新功能）
