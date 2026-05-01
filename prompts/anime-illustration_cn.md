# 动漫与插画提示词 / Anime & Illustration Prompts

> 适用于 Midjourney V7 的动漫、卡通和插画风格提示词。如需专门的动漫输出，也可将 --niji 6 与 --v 7 配合使用。

---

### 提示词 1：吉卜力钓鱼场景
**参数：** `--ar 16:9 --v 7`
**提示词：**
```
Close-up of a boy fishing in the river and catching a fish, captured with the finesse of Ghibli's storytelling, lush green background, soft lighting, detailed background --ar 16:9 --v 7
```
**适用场景：** 故事书插画、动漫风格自然场景、吉卜力工作室风格作品。
**技巧解析：** 指定"吉卜力的叙事风格"可以激活 Midjourney 对该工作室标志性的温暖、绘画质感美学的理解。"详细的背景"确保环境获得与主体同等的细节刻画，这正是吉卜力电影的特色。16:9 宽高比匹配电影画面构图。
![示例](../images/anime/ghibli-fishing.jpg)

---

### 提示词 2：带 SREF 风格码的森林少女
**参数：** `--ar 16:9 --sref 7435 --v 7`
**提示词：**
```
A girl standing in a mystical forest, anime illustration style, vibrant colors, detailed eyes, cel shading, dynamic pose, studio ghibli inspired, soft lighting, detailed background --ar 16:9 --sref 7435 --v 7
```
**适用场景：** 角色为主的动漫艺术、探索 SREF 风格码以获得一致的插画风格。
**技巧解析：** `--sref 7435` 风格参考码可在多次生成中锁定特定的插画风格。将"赛璐璐渲染（cel shading）"和"精细的眼睛"结合使用，可以将输出推向纯正的动漫渲染效果，而非半写实的混合风格。"动态姿势"可避免僵硬的静态结果。
![示例](../images/anime/anime-forest-girl.jpg)

---

### 提示词 3：经典卡通角色
**参数：** `--ar 16:9 --v 7`
**提示词：**
```
A cartoon dog character in classic Hanna-Barbera style, bright colors, groovy 1970s aesthetic, retro animation cel look --ar 16:9 --v 7
```
**适用场景：** 复古卡通设计、怀旧角色创作、动画风格研究。
**技巧解析：** 直接指明特定工作室（"汉纳-巴伯拉"）为 Midjourney 提供了精确的视觉目标，而非泛泛的"卡通"风格。"复古赛璐珞动画质感"模拟了手绘动画中物理透明胶片的绘制效果，增添了真实感。"70年代时尚美学"则暗示了那个时代的配色方案和设计风格。

---

### 提示词 4：水彩故事书
**参数：** `--ar 4:5 --s 400 --v 7`
**提示词：**
```
A cozy cottage in the woods with smoke coming from chimney, children's storybook illustration, soft watercolor style, warm pastel colors, whimsical atmosphere --ar 4:5 --s 400 --v 7
```
**适用场景：** 儿童读物插画、温馨氛围艺术、水彩风格印刷品。
**技巧解析：** `--s 400` 高风格化值推动 Midjourney 产生更具艺术感的绘画效果。"柔和的水彩风格"结合"温暖的粉彩色调"营造出温柔、亲切的配色。4:5 竖版比例非常适合书籍页面排版和社交媒体分享。

---

### 提示词 5：漫画动作分镜
**参数：** `--ar 16:9 --style raw --v 7`
**提示词：**
```
Dynamic manga action panel, samurai mid-strike with katana, speed lines, dramatic perspective, black and white with screentone, high contrast --ar 16:9 --style raw --v 7
```
**适用场景：** 漫画风格动作场景、单色插画研究、漫画分镜设计。
**技巧解析：** `--style raw` 降低了 Midjourney 的默认美化处理，这对于正宗漫画风格至关重要——漫画依赖强烈的明暗对比而非平滑的过渡。"速度线"和"网点纸效果"是漫画专用的视觉术语，V7 能够准确理解。明确"黑白"配合"高对比度"确保产生富有戏剧性的单色效果。
