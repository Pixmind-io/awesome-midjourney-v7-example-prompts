# Cinematic Prompts / 电影风格提示词

> Cinematic and video-ready prompts for Midjourney V7 — drone shots, tracking shots, film stills, and cinematic compositions.
>
> 适用于 Midjourney V7 的电影感和视频风格提示词——无人机航拍、跟踪镜头、电影剧照及电影级构图。

---

## 1. FPV Forest Flight

**Parameters:** `--ar 16:9 --s 300 --v 7`

```
FPV drone racing through redwood forest, morning mist, golden sunlight, photorealistic --ar 16:9 --s 300 --v 7
```

- **Best for:** Nature documentaries, adventure content
- **Tips:** Low chaos (default 0) maintains consistency across frames. Keep stylize at 300 for a realistic drone footage feel. V7 excels at motion-style prompts with natural language.

![FPV Forest Flight](../images/cinematic/fpv-forest.jpg)

---

## 2. Aerial Alpine Valley

**Parameters:** `--ar 16:9 --s 250 --c 20 --v 7`

```
Aerial drone shot of an alpine valley with snow-capped peaks and a winding river, dramatic side lighting creating long shadows, atmospheric haze in valley, golden hour --ar 16:9 --s 250 --c 20 --v 7
```

- **Best for:** Establishing shots, travel documentaries
- **Tips:** Moderate stylize (250) balances realism with beauty. Chaos at 20 introduces slight variation in cloud and haze patterns, giving a more organic feel. Great starting point for aerial panorama sequences.


---

## 3. Cyberpunk Tokyo Tracking

**Parameters:** `--ar 16:9 --s 400 --no crowds --v 7`

```
Tracking shot through neon-lit Tokyo streets at night, rain-slicked pavement reflecting cyberpunk signs, crowds of people with umbrellas, cinematic, film grain --ar 16:9 --s 400 --no crowds --v 7
```

- **Best for:** Music videos, fashion, cyberpunk aesthetics
- **Tips:** Higher stylize (400) enhances neon colors and the cinematic rain effect. The `--no crowds` parameter keeps the background cleaner when you want to focus on a specific subject. Film grain adds authenticity.

![Cyberpunk Tokyo Tracking](../images/cinematic/cyberpunk-tokyo.jpg)

---

## 4. Low Angle Hero Shot

**Parameters:** `--ar 9:16 --s 350 --c 5 --v 7`

```
Low angle hero shot of a warrior standing on a cliff edge overlooking a vast fantasy landscape, dramatic rim lighting, windswept hair and cloak, golden hour --ar 9:16 --s 350 --c 5 --v 7
```

- **Best for:** Character introductions, promotional imagery
- **Tips:** 9:16 aspect ratio is perfect for mobile and social media (Instagram Stories, TikTok). Low chaos (5) ensures the character remains the focal point. Rim lighting at golden hour creates a powerful silhouette effect.

![Low Angle Hero Shot](../images/cinematic/hero-shot.jpg)

---

## 5. Push-In Coffee Craft

**Parameters:** `--ar 9:16 --s 300 --v 7`

```
Slow push-in on artisan hands crafting a latte, steam rising, warm morning light from cafe window, photorealistic, shallow depth of field --ar 9:16 --s 300 --v 7
```

- **Best for:** Process videos, artisan content
- **Tips:** Vertical format (9:16) is ideal for social stories and short-form video platforms. Shallow depth of field draws attention to the hands and latte art. Warm tones paired with V7's improved texture rendering make steam and foam look incredibly realistic.


---

## 6. Noir Detective Scene

**Parameters:** `--ar 16:9 --s 400 --v 7`

```
Film noir style detective standing in a doorway, venetian blind shadows across face, cigarette smoke, rain outside window, black and white, high contrast --ar 16:9 --s 400 --v 7
```

- **Best for:** Film tributes, mood pieces, editorial
- **Tips:** High stylize (400) enhances the dramatic contrast and shadow play essential to film noir. V7 understands "venetian blind shadows" as a cinematic motif without needing additional explanation. Black and white combined with high contrast produces classic noir aesthetics.


---

## 7. Sci-Fi Corridor

**Parameters:** `--ar 21:9 --s 350 --v 7`

```
Wide shot of a futuristic spacecraft corridor, emergency red lighting, steam vents, lens flare, Ridley Scott inspired, anamorphic lens --ar 21:9 --s 350 --v 7
```

- **Best for:** Sci-fi concepts, game design, film previsualization
- **Tips:** Ultra-wide 21:9 aspect ratio mimics anamorphic cinema framing, ideal for establishing sci-fi environments. Naming a director ("Ridley Scott inspired") gives V7 a strong style anchor. Lens flare and anamorphic keywords enhance the cinematic camera feel.


---

## Parameter Quick Reference

| Parameter | Purpose | Typical Range (Cinematic) |
|-----------|---------|--------------------------|
| `--ar`    | Aspect ratio | `16:9` (standard), `9:16` (vertical), `21:9` (ultra-wide) |
| `--s`     | Stylize | `250-400` (higher for dramatic, lower for documentary) |
| `--c`     | Chaos | `0-20` (keep low for consistent cinematic feel) |
| `--no`    | Negative prompt | Remove unwanted elements (e.g., `--no crowds`) |
| `--v 7`   | Model version | Always use `--v 7` for latest capabilities |

---

*[Back to README](../README.md)*
