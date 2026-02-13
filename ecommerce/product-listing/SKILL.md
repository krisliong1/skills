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

## 输入参数

```json
{
  "platform": "woocommerce",
  "products": [
    {
      "name": "Logitech G502 Gaming Mouse",
      "category": "gaming",
      "price": 259.00,
      "supplier_url": "https://aliexpress.com/item/...",
      "images": [
        "https://example.com/image1.jpg",
        "https://example.com/image2.jpg"
      ]
    }
  ]
}
```

## 输出示例

### 生成的产品标题

**英语**: Logitech G502 HERO Gaming Mouse - High Precision RGB Wired Mouse  
**马来语**: Tetikus Gaming Logitech G502 HERO - Tetikus Berwayar RGB Ketepatan Tinggi

### 生成的产品描述

```
🎮 Logitech G502 HERO - 专业电竞鼠标

【产品特点】
✅ HERO 25K 传感器 - 100-25,600 DPI
✅ 11 个可编程按键
✅ RGB LIGHTSYNC 灯光系统
✅ 可调节重量系统 (3.6g x 5)

【适用场景】
- 电竞游戏 (FPS/MOBA)
- 办公设计
- 日常使用

【包装清单】
- G502 鼠标 x 1
- 配重块 x 5
- 用户手册

---

🎮 Tetikus Gaming Profesional Logitech G502 HERO

【Ciri-ciri Produk】
✅ Sensor HERO 25K - 100-25,600 DPI
✅ 11 Butang Boleh Diprogram
✅ Sistem Lampu RGB LIGHTSYNC
✅ Sistem Berat Boleh Laras (3.6g x 5)

【Sesuai Untuk】
- Gaming Esports (FPS/MOBA)
- Kerja Pejabat & Design
- Penggunaan Harian
```

### SEO 关键词

```
gaming mouse, tetikus gaming, logitech g502, rgb mouse, 
wired gaming mouse, high dpi mouse, esports mouse,
tetikus rgb, gaming gear malaysia
```

## 工作流程

1. **数据提取**
   - 从供应商链接抓取产品信息
   - 提取图片 URL
   - 获取基础规格

2. **内容生成**
   - AI 生成双语标题
   - 创建产品描述
   - 优化 SEO 关键词

3. **CSV 导出**
   - 格式化为 WooCommerce/Shopify 格式
   - 验证必填字段
   - 输出可导入文件

## 使用示例

### 在 Claude 中使用

```
用户: "帮我批量上架 50 个游戏鼠标到 WooCommerce"

Claude 会：
1. 加载 product-listing skill
2. 询问产品来源（AliExpress/供应商）
3. 提取产品信息
4. 生成双语标题和描述
5. 输出 WooCommerce CSV 文件
6. 提供导入步骤说明
```

## 脚本说明

### `scripts/woocommerce-generator.py`
批量生成 WooCommerce 产品 CSV

### `scripts/seo-optimizer.py`
SEO 关键词优化器

### `templates/product-template.csv`
WooCommerce CSV 模板

## 配置文件

`templates/seo-keywords.json` - SEO 关键词库

```json
{
  "gaming": [
    "gaming mouse",
    "tetikus gaming",
    "rgb mouse",
    "esports gear"
  ],
  "mac": [
    "macbook accessories",
    "aksesori mac",
    "mac peripherals"
  ]
}
```

## 最佳实践

1. **批量处理** - 每批 50-100 个产品
2. **图片优化** - 先使用 image-optimization skill
3. **价格计算** - 结合 pricing-strategy skill
4. **分类管理** - 预先创建好产品分类

## 常见问题

**Q: 支持哪些语言？**
A: 目前支持马来语 + 英语双语

**Q: 如何导入到 WooCommerce？**
A: WooCommerce → 产品 → 导入 → 上传 CSV

**Q: 生成的标题太长怎么办？**
A: 可以在配置中设置最大字符数限制

## 技术要求

- WooCommerce 3.0+
- Shopify (任意版本)
- Python 3.8+ (如需运行脚本)

---

**© 2026 Oskris.com | 联系: oskrismy@gmail.com**
