# Contributing to Awesome Midjourney V7

Thank you for your interest in contributing! This project aims to be the most comprehensive Midjourney V7 prompt resource for both English and Chinese-speaking communities.

## How to Contribute

### Adding New Prompts

1. **Fork** this repository
2. **Add your prompt** to the appropriate category file in `prompts/`
3. Follow the existing format:
   ```markdown
   ### Prompt N: [Title]
   **Parameters:** --ar 16:9 --v 7 --s 250
   **Prompt:**
   ```
   [Full prompt text]
   ```
   **Tips:** Why this works (EN)
   **Tips (CN):** 为什么有效 (中文)
   ```
4. If your prompt belongs to a new category, create a new file following the naming pattern
5. **Submit a Pull Request** with a clear description

### Adding Templates

1. Add templates to `templates/` directory
2. Use `{{variable}}` for fill-in-the-blank placeholders
3. Include example filled-in prompts and recommended parameter ranges

### Adding Parameter Comparisons

1. Add comparison guides to `parameters/`
2. Include valid ranges, recommended values by use case, and V7-specific notes

### Adding Images

1. Place images in the appropriate `images/[category]/` directory
2. Use WebP format for optimal file size
3. Name files descriptively: `category-style-description.webp`
4. Keep file sizes reasonable (under 500KB per image)

### Translation (CN)

1. Each file has a `_cn` suffixed Chinese version
2. Keep translations accurate and natural, not literal
3. Technical terms can keep English in parentheses: 提示词工程 (Prompt Engineering)

## Guidelines

- **Quality over quantity** — only submit prompts you have tested in V7
- **No duplicates** — check existing prompts before adding
- **Include parameters** — always specify `--v 7` and other relevant parameters
- **Be descriptive** — explain why a prompt works in the Tips section
- **Respect copyrights** — do not include prompts that reproduce copyrighted characters for commercial use

## File Naming

- Prompt files: `category-name.md` (English) / `category-name_cn.md` (Chinese)
- Images: `category-description-N.webp`
- Templates: `style-template.md`
- Parameters: `parameter-name.md`

## Pull Request Process

1. Ensure your PR has a clear title and description
2. Link any related issues
3. Make sure files are in the correct directories
4. One category per PR makes review easier

## Questions?

Open an issue with the `question` label.

---

## 贡献指南 (中文)

感谢你对本项目的关注！我们致力于为英语和中文社区提供最全面的 Midjourney V7 提示词资源。

### 如何贡献

1. **Fork** 本仓库
2. 将你的提示词添加到 `prompts/` 目录下的对应分类文件中
3. 遵循现有格式（参数、提示词正文、技巧说明）
4. 提交 **Pull Request**，附上清晰的描述

### 规范

- **质量优先** — 只提交你在 V7 中测试过的提示词
- **不重复** — 添加前检查是否已存在
- **包含参数** — 始终指定 `--v 7` 和其他相关参数
- **尊重版权** — 不要包含用于商业用途的版权角色提示词
