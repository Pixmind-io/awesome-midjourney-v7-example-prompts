# 抽象与艺术提示词

> Midjourney V7 抽象艺术、实验美学与艺术表达提示词。此类别的提示词通常需要较高的 stylize 值以获得最佳效果。

---

## 流体与动态

### 提示词 1：金属颜料碰撞
**参数：** --ar 1:1 --s 600 --c 30 --v 7
**提示词：**
```
Two streams of metallic paint colliding in mid-air, gold and teal, frozen in time, high-speed photography style, black background, abstract art
```
**适用场景：** 抽象背景、片头设计、艺术内容
**技巧：** 较高的 chaos (30) 可以创造独特的变体效果。高 stylize (600) 让 AI 在流体动态方面有更大的艺术发挥空间。

![示例](../images/abstract/metallic-paint.jpg)

---

### 提示词 2：几何光线折射
**参数：** --ar 1:1 --s 700 --v 7
**提示词：**
```
Geometric light refraction through crystal prisms, creating rainbow spectrum patterns, top-down view, multiple light sources, album cover art
```
**适用场景：** 专辑封面、现代艺术版画、设计灵感
**技巧：** "album cover art"（专辑封面艺术）会引导构图趋向居中、平衡的框架。

![示例](../images/abstract/light-refraction.jpg)

---

### 提示词 3：水中墨迹星系
**参数：** --ar 1:1 --s 800 --c 40 --v 7
**提示词：**
```
Macro photography of colored ink drops expanding in water, creating galaxy-like formations, deep purple and gold, cosmic aesthetic, ethereal, dreamlike
```
**适用场景：** 背景图、壁纸、专辑艺术、冥想视觉素材
**技巧：** 极高的 stylize (800) + 高 chaos (40) 每次都会产生截然不同的效果。


![示例](../images/abstract/prompt-3-ink-in-water-galaxy.jpg)

---

## 绘画风与质感

### 提示词 4：印象派花园
**参数：** --ar 16:9 --s 900 --v 7
**提示词：**
```
A garden in full bloom painted in thick impasto brushstrokes, Claude Monet inspired, vibrant splashes of color, visible canvas texture, dappled light
```
**适用场景：** 艺术版画、墙面装饰、艺术灵感
**技巧：** stylize 达到 900 可以将绘画质感推到极致。指定艺术家（莫奈）可以引导风格方向。


![示例](../images/abstract/prompt-4-impressionist-garden.jpg)

---

### 提示词 5：数字分形艺术
**参数：** --ar 1:1 --s 600 --v 7
**提示词：**
```
Intricate fractal art pattern, sacred geometry, metallic gold lines on deep navy blue background, mandala symmetry, infinitely detailed, digital art
```
**适用场景：** 海报、数字版画、冥想图像、周边商品
**技巧：** "sacred geometry"（神圣几何）和 "mandala symmetry"（曼陀罗对称）可以强化重复图案的结构感。


![示例](../images/abstract/prompt-5-digital-fractal-art.jpg)

---

## 实验风格

### 提示词 6：故障艺术人像
**参数：** --ar 4:5 --s 500 --v 7
**提示词：**
```
Glitch art portrait of a woman, digital distortion, RGB color separation, pixel displacement, cyberpunk aesthetic, neon pink and cyan, contemporary digital art
```
**适用场景：** 专辑艺术、社交媒体视觉、数字艺术展览
**技巧：** V7 对 "glitch"（故障效果）和 "RGB separation"（RGB 分离）的处理比之前版本更好，能产生更有意图感的扭曲效果。


![示例](../images/abstract/prompt-6-glitch-art-portrait.jpg)

---

## 更多资源

- [抽象 SREF 风格代码](../guide/sref-style-codes.md) — 适合抽象美学的风格代码
- [参数指南：Stylize](../parameters/stylize-comparison.md) — --s 值如何影响抽象艺术效果
- [模板：风景与抽象](../templates/landscape-template.md) — 改编为抽象构图
