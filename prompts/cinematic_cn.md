# 电影风格提示词 / Cinematic Prompts

> 适用于 Midjourney V7 的电影感和视频风格提示词——无人机航拍、跟踪镜头、电影剧照及电影级构图。
>
> Cinematic and video-ready prompts for Midjourney V7 — drone shots, tracking shots, film stills, and cinematic compositions.

---

## 1. FPV 穿越森林飞行

**参数：** `--ar 16:9 --s 300 --v 7`

```
FPV drone racing through redwood forest, morning mist, golden sunlight, photorealistic --ar 16:9 --s 300 --v 7
```

- **最适合：** 自然纪录片、冒险类内容
- **提示：** 低混乱度（默认 0）可保持跨帧一致性。风格化保持 300 可呈现真实的无人机航拍感。V7 擅长理解自然语言的运动风格提示词。

![FPV 穿越森林飞行](../images/cinematic/fpv-forest-flight.jpg)

---

## 2. 高空阿尔卑斯山谷

**参数：** `--ar 16:9 --s 250 --c 20 --v 7`

```
Aerial drone shot of an alpine valley with snow-capped peaks and a winding river, dramatic side lighting creating long shadows, atmospheric haze in valley, golden hour --ar 16:9 --s 250 --c 20 --v 7
```

- **最适合：** 开场镜头、旅行纪录片
- **提示：** 适中的风格化（250）在真实感与美感之间取得平衡。混乱度设为 20 会在云层和雾气中引入细微变化，呈现更自然的效果。是航拍全景序列的理想起点。

![高空阿尔卑斯山谷](../images/cinematic/aerial-alpine-valley.jpg)

---

## 3. 赛博朋克东京跟踪镜头

**参数：** `--ar 16:9 --s 400 --no crowds --v 7`

```
Tracking shot through neon-lit Tokyo streets at night, rain-slicked pavement reflecting cyberpunk signs, crowds of people with umbrellas, cinematic, film grain --ar 16:9 --s 400 --no crowds --v 7
```

- **最适合：** 音乐视频、时尚、赛博朋克美学
- **提示：** 较高的风格化（400）可增强霓虹色彩和电影级雨效。`--no crowds` 参数在你需要聚焦特定主体时可以保持背景简洁。胶片颗粒增加了真实感。

![赛博朋克东京跟踪镜头](../images/cinematic/cyberpunk-tokyo-tracking.jpg)

---

## 4. 低角度英雄镜头

**参数：** `--ar 9:16 --s 350 --c 5 --v 7`

```
Low angle hero shot of a warrior standing on a cliff edge overlooking a vast fantasy landscape, dramatic rim lighting, windswept hair and cloak, golden hour --ar 9:16 --s 350 --c 5 --v 7
```

- **最适合：** 角色登场、宣传图片
- **提示：** 9:16 竖屏比例非常适合移动端和社交媒体（Instagram 快拍、TikTok）。低混乱度（5）确保角色始终是画面焦点。黄金时段的轮廓光创造了强有力的剪影效果。

![低角度英雄镜头](../images/cinematic/low-angle-hero-shot.jpg)

---

## 5. 推进咖啡制作

**参数：** `--ar 9:16 --s 300 --v 7`

```
Slow push-in on artisan hands crafting a latte, steam rising, warm morning light from cafe window, photorealistic, shallow depth of field --ar 9:16 --s 300 --v 7
```

- **最适合：** 制作过程视频、匠人内容
- **提示：** 竖屏格式（9:16）是社交快拍和短视频平台的理想选择。浅景深将注意力集中在手部和拉花艺术上。暖色调配合 V7 改进的纹理渲染，使蒸汽和奶泡看起来极其逼真。

![推进咖啡制作](../images/cinematic/push-in-coffee-craft.jpg)

---

## 6. 黑色侦探场景

**参数：** `--ar 16:9 --s 400 --v 7`

```
Film noir style detective standing in a doorway, venetian blind shadows across face, cigarette smoke, rain outside window, black and white, high contrast --ar 16:9 --s 400 --v 7
```

- **最适合：** 电影致敬、情绪作品、编辑摄影
- **提示：** 高风格化（400）增强了黑色电影核心的戏剧性对比和阴影效果。V7 能理解"百叶窗阴影"这一电影意象，无需额外解释。黑白模式加上高对比度呈现经典黑色电影美学。

![黑色侦探场景](../images/cinematic/noir-detective-scene.jpg)

---

## 7. 科幻走廊

**参数：** `--ar 21:9 --s 350 --v 7`

```
Wide shot of a futuristic spacecraft corridor, emergency red lighting, steam vents, lens flare, Ridley Scott inspired, anamorphic lens --ar 21:9 --s 350 --v 7
```

- **最适合：** 科幻概念设计、游戏设计、电影预可视化
- **提示：** 超宽 21:9 比例模仿变形宽银幕电影画幅，非常适合建立科幻环境。指定导演名字（"Ridley Scott inspired"）为 V7 提供强烈的风格锚点。镜头光晕和变形镜头关键词增强了电影级摄影感。

![科幻走廊](../images/cinematic/sci-fi-corridor.jpg)

---

## 参数快速参考

| 参数 | 用途 | 电影风格常用范围 |
|------|------|-----------------|
| `--ar`    | 宽高比 | `16:9`（标准）、`9:16`（竖屏）、`21:9`（超宽） |
| `--s`     | 风格化 | `250-400`（戏剧性场景用高值，纪录片用低值） |
| `--c`     | 混乱度 | `0-20`（保持低值以确保一致的电影感） |
| `--no`    | 反向提示 | 移除不需要的元素（如 `--no crowds`） |
| `--v 7`   | 模型版本 | 始终使用 `--v 7` 以获得最新功能 |

---

*[返回首页](../README.md)*
