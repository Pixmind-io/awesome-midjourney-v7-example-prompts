# Midjourney V7 Prompt Encyclopedia - Design Spec

**Date:** 2026-05-01
**Repository:** awesome-midjourney-v7
**License:** CC0 1.0 Universal (Public Domain)

## Goal

Build a bilingual (English + Chinese) visual encyclopedia GitHub repository for Midjourney V7 prompt examples, templates, parameter guides, and prompt engineering techniques. Target: the definitive V7 prompt resource on GitHub.

## Target Audience

- AI artists using Midjourney V7
- Prompt engineers learning V7-specific techniques
- Both English-speaking and Chinese-speaking communities

## Repository Structure

```
awesome-midjourney-v7/
├── README.md                          # Hub page (bilingual)
├── README_CN.md                       # Full Chinese version
├── CONTRIBUTING.md                    # Contribution guidelines
├── LICENSE                            # CC0 1.0
├── prompts/                           # Prompt examples by category (10 categories)
├── templates/                         # Fill-in-the-blank templates (5 templates)
├── parameters/                        # Parameter comparison grids (6 guides)
├── guide/                             # Prompt engineering guide (5 pages)
├── images/                            # Generated example images (by category)
├── data/                              # Machine-readable JSON exports
└── resources/                         # External links & references
```

## Content Sections

### 1. Prompts (prompts/) - 10 categories

Each category gets a markdown page with:
- Category title and bilingual description
- 4-5 ready-to-use prompts with full parameter strings
- Tips explaining why each prompt works
- Image placeholders for generated results
- Both EN and CN versions

Categories: photography, cinematic, anime-illustration, 3d-isometric, concept-art, architecture, product-commercial, nature-landscape, abstract-artistic, text-typography

### 2. Templates (templates/) - 5 templates

Fill-in-the-blank patterns with `{{variable}}` placeholders for:
- Portrait, Landscape, Product, Architecture, Anime

Each template includes:
- The template string with placeholders
- Variable descriptions and suggested values
- Example filled-in prompt
- Recommended parameter ranges

### 3. Parameters (parameters/) - 6 guides

Side-by-side comparison guides for:
- --stylize (range comparison)
- --chaos (range comparison)
- --quality (range comparison)
- --ar (aspect ratio recommendations by use case)
- --oref / --ow (Omni Reference V7 new feature)
- --exp (experimental aesthetics V7 new feature)

Each guide includes:
- Parameter description and valid ranges
- Visual comparison grid placeholders
- Recommended values by use case
- V7-specific notes

### 4. Guide (guide/) - 5 pages

- getting-started.md: Quick start for V7 newcomers
- v7-new-features.md: All V7 features documented
- prompt-structure.md: 6-part prompt structure
- common-mistakes.md: Top mistakes to avoid
- sref-style-codes.md: Community SREF code collection

### 5. Data (data/)

- prompts.json: All prompts in structured JSON
- templates.json: All templates in structured JSON

## File Format Conventions

- Images: WebP format for compression
- Bilingual: CN files get `_cn` suffix, EN files get `_en` suffix or no suffix
- Prompts in code blocks for easy copy-paste
- Parameters listed separately from prompt text

## README Hub Design

- Badge shields (stars, license, last updated)
- Bilingual intro paragraphs
- Visual navigation with category sections
- Table of Contents with anchor links
- Quick Start section
- Contribution CTA

## Key Design Decisions

- **CC0 license**: Maximum sharing, matches top repos
- **WebP images**: Smaller files, faster GitHub browsing
- **Bilingual paired files**: Separate EN/CN files for clarity
- **JSON exports**: Enables programmatic access
- **Template patterns**: Reusable `{{variable}}` placeholders
