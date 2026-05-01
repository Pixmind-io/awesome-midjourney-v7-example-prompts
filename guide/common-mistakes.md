# Common Mistakes to Avoid / 常见错误

> Top mistakes that produce disappointing V7 results, and how to fix them. Based on analysis of 1000+ V7 generations.

---

## Mistake 1: Vague Descriptions / 描述过于模糊

The most common mistake. V7 is smart, but it's not a mind reader.

```
BAD:  beautiful landscape sunset
GOOD: Alpine valley at golden hour with snow-capped peaks, dramatic side lighting
      creating long shadows, atmospheric haze in valley --ar 16:9 --s 300 --v 7
```

**Why it fails:** "Beautiful" means nothing specific. "Landscape sunset" gives V7 no direction for composition, lighting, or mood.

**The fix:** Describe what you SEE, not how you FEEL about it. Replace subjective adjectives with concrete visual details.

---

## Mistake 2: Ignoring Lighting / 忽略光线描述

Lighting has an outsized impact on image quality. Omitting it means V7 guesses, and it often guesses wrong.

```
BAD:  portrait of a woman
GOOD: portrait of a woman with window light from left creating soft shadows,
      warm morning atmosphere --ar 4:5 --s 300 --v 7
```

**Why it fails:** Without lighting direction, V7 applies default flat lighting that looks amateur.

**The fix:** Always include at least one lighting descriptor. "Golden hour", "side lighting", "soft window light" — anything specific beats nothing.

---

## Mistake 3: Wrong Chaos Values / 混乱值设置不当

Chaos (`--c`) controls variation between the 4 generated images. Using the wrong level for your goal wastes GPU time.

| Goal | Recommended --c | Common Mistake |
|------|-----------------|----------------|
| Product photos | 0 | Using 50 (inconsistent products) |
| Portraits | 0-15 | Using 50+ (face inconsistency) |
| Creative exploration | 20-40 | Using 0 (misses variations) |
| Abstract art | 40-100 | Using 0 (boring sameness) |

**The fix:** Match chaos to your goal. Low for consistency, high for exploration.

---

## Mistake 4: Overcomplicated Prompts / 提示词过于复杂

More words does not mean better results. V7 works best with focused, specific descriptions.

```
BAD:  Cinematic drone shot flying through misty forest at dawn with golden
      light rays piercing through trees while birds fly and deer graze and
      a waterfall in the distance and morning dew on leaves...

GOOD: FPV drone through misty redwood forest at dawn, golden god rays,
      photorealistic --ar 16:9 --s 300 --v 7
```

**Why it fails:** V7 tries to include everything and ends up with a cluttered, incoherent mess.

**The fix:** One main subject, one action, one mood. Edit ruthlessly. If a detail doesn't serve the main idea, cut it.

---

## Mistake 5: Not Testing Parameters / 不测试参数

Copying prompts blindly without understanding how parameters affect the result.

**Common symptoms:**
- "This prompt doesn't work" — have you tried different --s values?
- "The style is wrong" — have you tried --style raw?
- "Results are inconsistent" — is your --c too high?

**Systematic testing approach:**

1. Create a "base prompt" you're happy with
2. Duplicate it and change **only ONE** parameter
3. Compare results to learn what each parameter does
4. Example test series:
   ```
   Base prompt with --s 250
   Same prompt with --s 350
   Same prompt with --s 450
   ```

---

## Bonus: Quick Fix Checklist / 快速修复清单

| Problem | Likely Cause | Fix |
|---------|-------------|-----|
| Results look "AI-ish" | Stylize too high | Lower --s to 150-250 |
| Results are boring | Stylize too low | Raise --s to 350-500 |
| Inconsistent outputs | Chaos too high | Lower --c to 0-15 |
| Not artistic enough | Missing style keywords | Add "cinematic" or "photorealistic" |
| Wrong mood | Missing lighting | Add lighting description |
| Text rendering bad | Too many words | Keep text to 2-4 words max |
| Subject wrong | Subject not first | Move subject to the beginning |
| Multiple subjects confused | Too many subjects | Focus on one main subject |

---

## 常见错误总结（中文）

| 错误 | 原因 | 解决方法 |
|------|------|----------|
| 描述模糊 | 用了 "美丽的" 等主观词 | 用具体的视觉细节替代 |
| 缺少光线 | 没有描述灯光 | 至少加一个光线描述词 |
| 混乱值不当 | --c 与目标不匹配 | 专业作品保持 0-20 |
| 提示词过长 | 塞入太多元素 | 专注一个主体，精简描述 |
| 不测试参数 | 盲目复制提示词 | 每次只改一个参数对比测试 |
