# Midjourney V7 提示词 — 63+ 可复制示例（含效果图）

[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
[![GitHub stars](https://img.shields.io/github/stars/yourusername/awesome-midjourney-v7-example-prompts?style=social)](https://github.com/yourusername/awesome-midjourney-v7-example-prompts)
[![English](https://img.shields.io/badge/English-README-blue)](README.md)

> 最大的开源 **Midjourney V7 提示词**合集。63+ 条经过测试的提示词，附生成效果图，覆盖摄影、电影、建筑、动漫、3D、概念艺术等 10 个分类。可直接复制使用。含参数指南、填空模板和提示词工程教程。

---

## 快速入门 — 你的第一条 V7 提示词

复制下面的提示词，粘贴到 Midjourney 中即可：

```
/imagine a golden retriever playing in autumn leaves, warm afternoon light, photorealistic --ar 16:9 --s 250 --v 7
```

**没有 Midjourney 账号？** 可以用 [Pixmind](https://www.pixmind.io/) 生成类似的 AI 图片 — 注册即送免费积分，支持 Midjourney V7 和其他主流模型。

📖 [入门指南](guide/getting-started.md) | [V7 新功能](guide/v7-new-features.md) | [提示词结构公式](guide/prompt-structure.md)

---

## 按类别浏览提示词

每条提示词都包含完整参数、技巧说明和生成效果图。

| 分类 | 数量 | 英文版 | 中文版 |
|------|------|--------|--------|
| **摄影** — 人像、街拍、产品 | 10 | [EN](prompts/photography.md) | [中文](prompts/photography_cn.md) |
| **电影风格** — 无人机、影视、视频 | 7 | [EN](prompts/cinematic.md) | [中文](prompts/cinematic_cn.md) |
| **建筑** — 室内、外观、城市规划 | 8 | [EN](prompts/architecture.md) | [中文](prompts/architecture_cn.md) |
| **概念艺术** — 奇幻、科幻、角色设计 | 5 | [EN](prompts/concept-art.md) | [中文](prompts/concept-art_cn.md) |
| **动漫插画** — 吉卜力、漫画、赛璐璐 | 5 | [EN](prompts/anime-illustration.md) | [中文](prompts/anime-illustration_cn.md) |
| **3D 等距** — 渲染、地图、爆炸图 | 5 | [EN](prompts/3d-isometric.md) | [中文](prompts/3d-isometric_cn.md) |
| **自然风景** — 极光、山川、海洋 | 5 | [EN](prompts/nature-landscape.md) | [中文](prompts/nature-landscape_cn.md) |
| **产品商业** — 奢侈品、化妆品、美食 | 6 | [EN](prompts/product-commercial.md) | [中文](prompts/product-commercial_cn.md) |
| **抽象艺术** — 流体、分形、故障风 | 6 | [EN](prompts/abstract-artistic.md) | [中文](prompts/abstract-artistic_cn.md) |
| **文字排版** — 海报、霓虹、Logo | 6 | [EN](prompts/text-typography.md) | [中文](prompts/text-typography_cn.md) |

---

## 提示词模板

使用 `{{变量}}` 占位符的填空式模板，秒级自定义提示词：

| 模板 | 适用场景 |
|------|----------|
| [人像模板](templates/portrait-template.md) | 编辑风、电影风、美妆人像 |
| [风景模板](templates/landscape-template.md) | 大气风景、戏剧天气、宁静自然 |
| [产品模板](templates/product-template.md) | 影棚、生活方式、艺术产品摄影 |
| [建筑模板](templates/architecture-template.md) | 外观、室内、航拍/城市规划 |
| [动漫模板](templates/anime-template.md) | 角色设计、故事书、环境插画 |

---

## V7 参数指南

学习每个参数如何影响生成效果：

| 参数 | 指南 | 控制内容 |
|------|------|----------|
| `--s` (风格化) | [Stylize 对比](parameters/stylize-comparison.md) | 艺术诠释强度 (0-1000) |
| `--c` (混乱) | [Chaos 对比](parameters/chaos-comparison.md) | 4 张图的变异程度 (0-100) |
| `--q` (质量) | [Quality 对比](parameters/quality-comparison.md) | 细节 vs GPU 成本 (0.5, 1, 2, 4) |
| `--ar` | [宽高比指南](parameters/aspect-ratio-guide.md) | 各平台的画面比例 |
| `--oref` | [Omni Reference](parameters/oref-omni-reference.md) | 角色/物体/载具一致性（V7 新功能） |
| `--exp` | [实验性参数](parameters/exp-experimental.md) | 高级色调映射（V7 新功能, 0-100） |

---

## 提示词工程指南

| 指南 | 学习内容 |
|------|----------|
| [入门指南](guide/getting-started.md) | 2 分钟写出第一条 V7 提示词 |
| [V7 新功能](guide/v7-new-features.md) | 视频、Draft 模式、Omni Reference、个性化 |
| [提示词结构](guide/prompt-structure.md) | 六段公式：主体 → 动作 → 环境 → 光线 → 风格 → 参数 |
| [常见错误](guide/common-mistakes.md) | 浪费 GPU 时间的前 5 个错误 |
| [SREF 风格代码](guide/sref-style-codes.md) | 社区发现的风参考代码 |

---

## V7 核心参数速查

| 参数 | 值 | 默认值 | 用途 |
|------|-----|--------|------|
| `--v 7` | 7 | current | 模型版本 |
| `--ar` | 1:1, 4:5, 9:16, 16:9, 21:9, 2:3, 3:2, 4:3 | 1:1 | 宽高比 |
| `--s` | 0-1000 | varies | 艺术诠释程度 |
| `--c` | 0-100 | 0 | 输出之间的变异 |
| `--q` | 0.5, 1, 2, 4 | 1 | 渲染质量 |
| `--style` | raw | default | 更真实的输出 |
| `--no` | text, blur 等 | none | 反向提示词 |
| `--oref` | [URL] | none | 全能参考（V7 新功能） |
| `--ow` | ~400 | varies | 全能权重（V7 新功能） |
| `--exp` | 0-100 | 0 | 实验性美学（V7 新功能） |
| `--sref` | 代码或 [URL] | none | 风格参考 |
| `--p` | flag | on | 个性化 |
| `--seed` | 0-4294967295 | random | 可复现结果 |

---

## 常见问题

### Midjourney V7 是什么？
Midjourney V7 是 Midjourney 于 2025 年 4 月发布的最新 AI 图片生成模型。相比 V6，它大幅提升了照片级真实感、新增视频生成（最长 21 秒）、Omni Reference（--oref）系统和更好的自然语言理解能力。

### 怎么写好一条 Midjourney V7 提示词？
遵循六段公式：主体 + 动作 + 环境 + 光线 + 风格 + 参数。把主体放在最前面（V7 对前面的词赋予更高权重），描述具体光线（效果提升 3 倍），参数放在最后。详见[提示词结构指南](guide/prompt-structure.md)。

### V7 有哪些新参数？
V7 新增了 `--oref`（全能参考，替代 `--cref`）、`--ow`（全能权重）、`--exp`（实验性美学，0-100）和 `--q 4`（最高质量档）。个性化也默认开启。详见 [V7 新功能](guide/v7-new-features.md)。

### 没有 Midjourney 账号怎么生成这些图片？
可以使用 [Pixmind](https://www.pixmind.io/)，它提供 Midjourney V7 和其他主流 AI 图片模型的 API 访问。注册即送免费积分，不需要 Discord。本仓库的示例图片就是通过 Pixmind API 生成的。

### V7 和 V6 有什么区别？
V7 拥有更好的照片级真实感、更少的手指/手部瑕疵、视频生成、Omni Reference、Draft 模式、对话模式，以及扩展的风格化范围（0-1000 vs 0-750）。旧的 V6 提示词在 V7 中可能产生不同结果。详见 [V7 新功能](guide/v7-new-features.md)。

---

## JSON 数据导出

面向开发者的结构化数据：

- [prompts.json](data/prompts.json) — 全部 63+ 条提示词的结构化 JSON
- [templates.json](data/templates.json) — 全部模板的结构化 JSON

---

## 贡献

欢迎贡献！请阅读 [CONTRIBUTING.md](CONTRIBUTING.md) 了解贡献指南。

---

## 许可

[CC0 1.0 通用](LICENSE) — 公共领域。可自由用于任何目的。

---

## 关于

本仓库旨在帮助 Midjourney 社区掌握 V7 提示词技巧。示例图片使用 [Pixmind](https://www.pixmind.io/)（支持 Midjourney V7 和其他主流模型的 AI 图片生成 API）生成。

<p align="center">
  <a href="https://www.pixmind.io/">Powered by Pixmind — AI 图片生成 API</a>
</p>
