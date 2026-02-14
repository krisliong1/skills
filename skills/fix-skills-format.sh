#!/bin/bash

# 修复 Skills 格式脚本
# 添加必需的 YAML frontmatter

set -e

cd ~/Projects/skills

echo "🔧 修复 product-listing SKILL.md..."

cat > ecommerce/product-listing/SKILL.md << 'EOF'
---
name: product-listing
description: Batch generate WooCommerce/Shopify product listings with bilingual titles (Malay+English), SEO optimization, and automatic categorization. Use when uploading multiple products, need dual-language support, or SEO keyword optimization.
---

# Product Listing Skill

## 用途
批量生成 WooCommerce/Shopify 产品上架数据，包括双语标题（马来语+英语）、SEO 优化描述、自动分类。

## 适用场景
- Dropshipping 批量上架产品
- 电商平台产品管理
- 需要马来语+英语双语支持
- SEO 关键词优化

## 核心功能

1. **智能标题生成**
   - 自动生成马来语+英语双语标题
   - SEO 关键词优化
   - 符合搜索习惯

2. **产品描述优化**
   - 突出产品卖点
   - 包含规格参数
   - 使用场景描述

3. **分类自动匹配**
   - 游戏外设 (Gaming)
   - Mac 生态 (Mac Ecosystem)
   - 智能家居 (Smart Home)

4. **批量导出**
   - WooCommerce CSV 格式
   - Shopify CSV 格式
   - 支持批量上传

## 使用示例

**输入：**
```
帮我批量上架 50 个游戏鼠标到 WooCommerce
产品来源：AliExpress
分类：Gaming
```

**输出：**
- WooCommerce CSV 文件（可直接导入）
- 每个产品包含：双语标题、优化描述、SEO 关键词、分类、价格

## 工作流程

### 步骤 1: 收集产品信息
- 产品名称
- 价格
- 供应商链接
- 产品图片

### 步骤 2: 生成双语内容
**英语标题示例：**
`Logitech G502 HERO Gaming Mouse - High Precision RGB Wired`

**马来语标题示例：**
`Tetikus Gaming Logitech G502 HERO - Ketepatan Tinggi RGB`

### 步骤 3: 优化产品描述
包含：
- 产品特点（卖点）
- 技术规格
- 适用场景
- 包装清单

### 步骤 4: 导出 CSV
格式化为 WooCommerce/Shopify 可导入格式

## SEO 优化

自动生成马来西亚本地化关键词：
- gaming mouse → tetikus gaming
- RGB mouse → tetikus RGB
- high precision → ketepatan tinggi

## 配置

产品分类映射：
- Gaming: 游戏外设、电竞装备
- Mac: MacBook 配件、苹果生态
- Smart Home: 智能家居、IoT 设备

## 最佳实践

1. **批量大小**: 每批 50-100 个产品
2. **图片准备**: 先使用 image-optimization skill
3. **价格计算**: 结合 pricing-strategy skill
4. **质量检查**: 导入前预览 CSV

## 输出格式

**WooCommerce CSV 字段：**
- SKU, Name, Name_MY, Description, Price, Category, Images, SEO_Keywords

**Shopify CSV 字段：**
- Handle, Title, Body (HTML), Vendor, Type, Tags, Price

---

**Made with ❤️ by Kris Liong for [Oskris](https://oskris.com)**  
**联系: oskrismy@gmail.com**
EOF

echo "✅ product-listing 修复完成"

echo "🔧 修复 requirement-analysis SKILL.md..."

cat > web-projects/requirement-analysis/SKILL.md << 'EOF'
---
name: requirement-analysis
description: Professional web development requirement analysis and technical proposal generation. Use when analyzing client needs, defining project scope, creating quotations, or planning web development projects (websites, e-commerce, web apps).
---

# Requirement Analysis Skill

## 用途
为网页开发项目进行专业的需求分析，生成完整的需求文档和技术方案报价。

## 适用场景
- 客户咨询网站开发
- 项目启动前的需求确认
- 功能范围界定
- 技术方案评估与报价

## 工作流程

### 第 1 步：客户背景调研

**必问问题清单：**

1. **业务类型** - 您的业务属于哪个行业？
2. **目标用户** - 您的主要客户群体是谁？
3. **核心功能** - 网站最重要的 3 个功能是什么？
4. **预算范围** - 大概预算是多少？（RM 2,000 - RM 50,000）
5. **时间要求** - 希望什么时候上线？
6. **参考网站** - 有喜欢的网站可以参考吗？

### 第 2 步：项目类型判断

#### **A. 企业官网（RM 2,000 - 5,000）**

**适用：** 公司介绍、产品展示、联系方式

**功能：**
- 响应式设计
- 公司介绍
- 产品/服务展示
- 联系表单
- Google Maps 集成

**技术方案：**
- Next.js + Tailwind CSS
- 部署：Vercel
- 周期：2-3 周

#### **B. 电商网站（RM 5,000 - 15,000）**

**适用：** 在线销售、购物车、支付

**功能：**
- 产品目录
- 购物车系统
- 支付集成（Stripe/FPX/PayPal）
- 订单管理
- 用户系统

**技术方案：**
- WooCommerce / Shopify / 定制开发
- 周期：4-6 周

#### **C. 定制 Web 应用（RM 15,000+）**

**适用：** 复杂业务逻辑、用户系统、数据分析

**功能：**
- 用户注册/登录
- 权限管理
- 数据仪表板
- API 集成

**技术方案：**
- React/Next.js + Node.js/Python
- PostgreSQL / Supabase
- 周期：8-12 周

### 第 3 步：生成需求文档

**文档包含：**
1. 项目概述
2. 功能需求（详细列表）
3. 技术方案
4. 项目报价（分项明细）
5. 时间表
6. 付款方式（首付 50%）

### 第 4 步：客户确认

确认清单：
- ✅ 功能范围清晰
- ✅ 技术方案可行
- ✅ 预算合理
- ✅ 支付条款明确

## 报价参考（马来西亚市场 2026）

| 项目类型 | 价格区间 | 周期 |
|---------|---------|------|
| 简单官网 | RM 2,000 - 5,000 | 2-3 周 |
| 企业网站 | RM 5,000 - 10,000 | 3-4 周 |
| 电商网站 | RM 10,000 - 20,000 | 4-8 周 |
| 定制应用 | RM 20,000+ | 8-12 周 |

按小时收费：RM 150 - 300/小时

## 最佳实践

1. **明确范围** - 避免"无限修改"
2. **分期付款** - 首付 50%，交付后付尾款
3. **书面确认** - 所有需求书面化
4. **预留缓冲** - 时间预留 20%
5. **超范围收费** - 明确额外功能收费标准

## 常见问题处理

**Q: 客户要求"参考某某网站"**
A: 分析具体功能点，明确必要功能，给出实现方案和成本

**Q: 客户预算不够**
A: 提供 MVP 方案，分阶段开发，或推荐低成本方案

**Q: 时间要求不合理**
A: 说明各阶段时间，提供快速方案（成本更高）或延长周期

## 使用示例

```
用户: "客户要做一个建筑公司的网站，预算 RM 5,000"

输出:
1. 提出标准问卷
2. 分析需求 → 企业官网
3. 生成需求文档
4. 技术方案 + 报价
5. 项目时间表
```

---

**Made with ❤️ by Kris Liong for [Oskris](https://oskris.com)**  
**联系: oskrismy@gmail.com**
EOF

echo "✅ requirement-analysis 修复完成"

# 提交更新
echo "📤 提交到 Git..."
git add ecommerce/product-listing/SKILL.md web-projects/requirement-analysis/SKILL.md
git commit -m "Fix: Add YAML frontmatter to SKILL.md files

- Added required name and description fields
- Fixed format to comply with skills.sh specification
- Both skills now properly loadable"

git push

echo ""
echo "🎉 修复完成！"
echo ""
echo "现在可以运行："
echo "  npx skills add krisliong1/skills/product-listing"
echo "  npx skills add krisliong1/skills/requirement-analysis"
