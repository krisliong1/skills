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
