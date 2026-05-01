# 文字与排版提示词

> Midjourney V7 的文字渲染、排版、海报和情绪板提示词。V7 的文字渲染有所改进但仍不完美 — 建议将文字保持在 2-4 个词以内。

---

## 活动海报

### 提示词 1：爵士之夜海报
**参数：** --ar 2:3 --v 7
**提示词：**
```
A digital poster for a jazz night event with the words "Smooth Sounds Tonight" in glowing letters, moody lighting, neon aesthetic, dark background
```
**适用场景：** 活动推广、海报设计、夜生活品牌
**技巧：** 文字最多保留 2-4 个词。V7 对短句处理效果较好，但较长的文字会出现变形。

![示例](../images/text/jazz-night-poster.jpg)

---

### 提示词 2：极简品牌 Logo
**参数：** --ar 1:1 --style raw --v 7
**提示词：**
```
Minimalist logo design for a coffee shop called "Bloom", clean sans-serif typography, single line art flower icon, black on cream background, modern brand identity
```
**适用场景：** Logo 概念、品牌形象设计稿、创业路演
**技巧：** 使用 `--style raw` 可以获得更精确的文字渲染。"Sans-serif"（无衬线体）有助于保持字母更清晰。

![示例](../images/text/brand-logo.jpg)

---

## 情绪板与排版

### 提示词 3：室内设计情绪板
**参数：** --ar 16:9 --v 7
**提示词：**
```
Interior design moodboard for a modern Scandinavian living room, neutral tones, natural materials, clean lines, cozy textures, calm palette
```
**适用场景：** 室内设计方案、品牌情绪板、客户提案
**技巧：** 情绪板风格的提示词效果很好，因为 V7 能理解拼贴/排版的布局概念。

![示例](../images/text/interior-moodboard.jpg)

---

### 提示词 4：时尚品牌 Lookbook
**参数：** --ar 4:5 --s 300 --v 7
**提示词：**
```
Fashion brand lookbook layout page, featuring a model in oversized cream linen outfit, polaroid-style photo arrangement, handwritten notes aesthetic, editorial layout, minimal design
```
**适用场景：** 时尚品牌、Lookbook 概念、编辑排版
**技巧：** "Polaroid-style"（宝丽来风格）和 "handwritten notes"（手写笔记）可以创建剪贴簿/Lookbook 的感觉，而不需要精确的文字。

![示例](../images/text/fashion-lookbook.jpg)

---

## 排版艺术

### 提示词 5：霓虹灯文字
**参数：** --ar 16:9 --s 400 --v 7
**提示词：**
```
Neon sign reading "DREAM BIG" mounted on a dark brick wall, warm glow reflecting on wet pavement below, atmospheric, urban photography style
```
**适用场景：** 励志内容、社交媒体、城市美学
**技巧：** 霓虹文字比印刷文字渲染更可靠，因为光晕效果可以掩盖瑕疵。

![示例](../images/text/neon-sign.jpg)

---

### 提示词 6：四季对比图
**参数：** --ar 16:9 --style raw --v 7
**提示词：**
```
The same modern cabin with a cantilevered roof, shown in four seasonal variations: spring blossoms, summer lush greenery, autumn foliage, and winter snow. Consistent camera angle, photorealistic, documenting the changing environment
```
**适用场景：** 客户提案、季节性营销、设计对比
**技巧：** "Consistent camera angle"（一致的拍摄角度）有助于 V7 在四个面板中保持相同的视角。使用 `--style raw` 可以获得更准确的建筑渲染效果。

![示例](../images/text/four-seasons.jpg)

---

## V7 文字渲染技巧

| 技巧 | 效果 |
|------|------|
| 文字保持在 2-4 个词 | 渲染更可靠 |
| 使用 `--style raw` | 文字输出更精确 |
| 用引号包裹文字 | 帮助 V7 识别需要渲染的文字 |
| 霓虹/灯光效果 | 光晕可以掩盖文字瑕疵 |
| 大号粗体字 | 比小字渲染更清晰 |
| 避免手写风格 | V7 处理草书/手写体仍有困难 |

---

## 更多资源

- [V7 新功能指南](../guide/v7-new-features.md) — V7 中改进的文字理解能力
- [模板：海报设计](../templates/poster-template.md) — 创建你自己的文字提示词
