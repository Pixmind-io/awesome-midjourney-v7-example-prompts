# 3D 与等距视角提示词 / 3D & Isometric Prompts

> 适用于 Midjourney V7 的 3D 渲染、等距视角和产品可视化提示词。

---

### 提示词 1：未来载具 3D 渲染
**参数：** `--ar 16:9 --v 7`
**提示词：**
```
3D-Illustration of a futuristic vehicle with smooth surfaces and dynamic lines, illuminated under a starry sky, octane render, volumetric lighting --ar 16:9 --v 7
```
**适用场景：** 产品概念渲染、科幻载具设计、作品集级别的 3D 插画。
**技巧解析：** 以"3D插画"开头可以立即设定渲染范式。"Octane渲染"和"体积光照"是 3D 行业术语，推动 Midjourney 生成具有真实光线行为的专业 CG 效果。星空背景为载具光滑表面创造自然的镜面高光效果。
![示例](../images/3d/futuristic-vehicle.jpg)

---

### 提示词 2：等距城市地图
**参数：** `--ar 16:9 --v 7`
**提示词：**
```
Create an isometric representation of a complex, futuristic city map in which all buildings and streets are in perfect harmony with each other and visible from a bird's eye view --ar 16:9 --v 7
```
**适用场景：** 游戏关卡设计、城市规划概念、世界观构建可视化。
**技巧解析：** "完美协调"这一表述指示 Midjourney 生成有凝聚力的布局，而非随机建筑。"鸟瞰视角"结合"等距"确保正确的摄像机角度。16:9 的比例为展开的城市景观提供了足够的水平空间。
![示例](../images/3d/isometric-city.jpg)

---

### 提示词 3：像素艺术奇幻
**参数：** `--ar 16:9 --v 7`
**提示词：**
```
Fantasy game, 16-bit pixel art --ar 16:9 --v 7
```
**适用场景：** 复古游戏资产灵感、独立游戏情绪板、怀旧像素艺术研究。
**技巧解析：** 极简表达在此处效果出色，因为"16位像素艺术"是一个高度具体的视觉风格，V7 可以精确理解。添加过多描述词反而会稀释像素艺术的美感。让 Midjourney 基于 SNES 时代游戏艺术的训练数据自行填充奇幻细节。


![示例](../images/3d/prompt-3-pixel-art-fantasy.jpg)
---

### 提示词 4：可爱等距房间
**参数：** `--ar 1:1 --s 500 --v 7`
**提示词：**
```
Isometric cute miniature bedroom, pastel colors, kawaii aesthetic, cozy tiny furniture, soft shadows, clay render style --ar 1:1 --s 500 --v 7
```
**适用场景：** 温馨室内插画、可爱主题艺术品、微缩透视模型概念。
**技巧解析：** 高 `--s 500` 风格化值增强了艺术魅力和柔和感。"粘土渲染风格"赋予物体哑光、有触感的质感，与可爱美学完美搭配。"柔和阴影"避免了破坏温柔氛围的强烈光线。1:1 正方形比例适合透视模型般的构图。


![示例](../images/3d/prompt-4-cute-isometric-room.jpg)
---

### 提示词 5：产品爆炸图
**参数：** `--ar 1:1 --s 150 --v 7`
**提示词：**
```
Exploded view of a running shoe, all components separated and floating, technical diagram style, pure white background, ultra-detailed, commercial product photography --ar 1:1 --s 150 --v 7
```
**适用场景：** 产品设计展示、技术插图、电商营销素材。
**技巧解析：** 适中的 `--s 150` 风格化值保持结果干净、图表化，而非过度艺术化。"爆炸图"是一个精确的技术术语，V7 理解为组件在空间中展开分离的效果。"纯白背景"确保专业的工作室级品质，适合商业用途。1:1 比例非常适合产品目录和社交媒体。

![示例](../images/3d/prompt-5-product-exploded-view.jpg)
