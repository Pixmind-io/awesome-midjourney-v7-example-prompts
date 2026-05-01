# Getting Started with Midjourney V7 / Midjourney V7 入门指南

> A quick-start guide for new Midjourney V7 users. Learn the basics of prompt writing and key parameters.

---

## What is Midjourney V7?

Midjourney V7 (released April 2025, default since June 2025) is a ground-up rework focused on three priorities: **photographic realism, physical coherence, and precise prompt interpretation.**

Key improvements over V6:
- Much better natural language understanding
- Enhanced photorealism (skin, fabric, lighting)
- Video generation (up to 21 seconds)
- Draft Mode (10x faster, half GPU cost)
- Conversational Mode (chat-like interaction)
- New Omni Reference (`--oref`) for characters, objects, and vehicles

---

## Quick Start: Your First Prompt

1. Open Midjourney (Discord or web app) — or use [Pixmind](https://www.pixmind.io/) for API access to MJ V7 without Discord
2. Type `/imagine` followed by your prompt
3. Always end with `--v 7`

```
/imagine a golden retriever playing in autumn leaves, warm afternoon light, photorealistic --ar 16:9 --s 250 --v 7
```

That's it! Now let's understand what each part does.

---

## The 6-Part Prompt Structure

Every good V7 prompt follows this order:

```
[Subject] + [Action] + [Environment] + [Lighting] + [Style] + [Parameters]
```

| Part | Example | Why it matters |
|------|---------|----------------|
| **Subject** | "a golden retriever" | What is the main focus? Goes FIRST (most weight) |
| **Action** | "playing in autumn leaves" | What is happening? |
| **Environment** | "in a park" | Where is this taking place? |
| **Lighting** | "warm afternoon light" | Sets mood and atmosphere |
| **Style** | "photorealistic" | Visual treatment |
| **Parameters** | `--ar 16:9 --s 250 --v 7` | Technical settings, always at the END |

---

## 5 Essential Parameters to Know

| Parameter | What it does | Recommended default |
|-----------|-------------|-------------------|
| `--v 7` | Uses V7 model | Always include |
| `--ar 16:9` | Sets aspect ratio | 16:9 for landscape, 4:5 for portrait, 1:1 for square |
| `--s 250` | Artistic freedom (0-1000) | Start at 250, increase for more artistic results |
| `--c 0` | Variation between 4 images | Keep at 0-20 for professional work |
| `--style raw` | More realistic, less "AI look" | Add for product photos and documentation |

---

## 3 Prompting Rules for V7

### 1. Front-load important details
V7 weighs early words more heavily.

```
BAD:  shot on film, photorealistic, woman in red dress
GOOD: woman in red dress, photorealistic, shot on film
```

### 2. Natural language beats keyword stuffing
V7 understands full sentences better than comma-separated keywords.

```
BAD:  forest, sunlight, morning, canopy, filter, rays
GOOD: morning sunlight filtering through forest canopy
```

### 3. One main subject
Multiple subjects confuse V7. Stick to one primary focus per prompt.

```
WORKS:     luxury watch on marble
STRUGGLES: luxury watch, smartphone, and laptop on marble
```

---

## What to Explore Next

- [V7 New Features](v7-new-features.md) — All new capabilities in detail
- [Prompt Structure Guide](prompt-structure.md) — Deep dive into prompt engineering
- [Common Mistakes](common-mistakes.md) — Top mistakes to avoid
- [Browse Prompts by Category](../prompts/photography.md) — Ready-to-use examples
- [Parameter Comparisons](../parameters/stylize-comparison.md) — See how parameters affect output

---

## Quick Start / 快速入门 (中文)

### 什么是 Midjourney V7？

Midjourney V7（2025年4月发布，2025年6月成为默认版本）是一次全面重构，专注于三个核心：**照片级真实感、物理连贯性、精确的提示词理解**。

### 你的第一个提示词

```
/imagine a golden retriever playing in autumn leaves, warm afternoon light, photorealistic --ar 16:9 --s 250 --v 7
```

### 6 部分提示词结构

```
[主体] + [动作] + [环境] + [光线] + [风格] + [参数]
```

**关键规则：**
1. 重要的内容写在最前面 — V7 对前面的词赋予更高的权重
2. 自然语言优于关键词堆砌 — V7 更擅长理解完整句子
3. 每次只描述一个主体 — 多个主体会让 V7 混淆

### 5 个必须知道的参数

| 参数 | 作用 | 推荐默认值 |
|------|------|-----------|
| `--v 7` | 使用 V7 模型 | 始终包含 |
| `--ar 16:9` | 设置宽高比 | 16:9 风景、4:5 人像、1:1 正方形 |
| `--s 250` | 艺术自由度 (0-1000) | 从 250 开始 |
| `--c 0` | 四张图的变异程度 | 专业作品保持在 0-20 |
| `--style raw` | 更真实，减少 "AI 味" | 产品照片使用 |
