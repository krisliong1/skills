# Skills by Kris Liong

![Skills Badge](https://img.shields.io/badge/Skills-19-blue)
![License](https://img.shields.io/badge/license-MIT-green)

**专业的 AI Agent Skills 库 - 专注电商与 Web 开发**

这是一套完整的 AI Agent Skills 集合，涵盖电商运营、Web 开发、营销推广等领域。所有技能来自 [Oskris](https://oskris.com) 的实际业务经验。

## 🌐 关于

- **作者**: Kris Liong
- **网站**: [oskris.com](https://oskris.com)
- **联系**: oskrismy@gmail.com
- **GitHub**: [@krisliong1](https://github.com/krisliong1)

## 🚀 快速开始

```bash
# 安装单个 Skill
npx skills add krisliong1/skills/product-listing

# 安装整个分类
npx skills add krisliong1/skills/ecommerce
npx skills add krisliong1/skills/web-projects
```

## 📦 Skills 目录

### 🛒 电商运营 (E-commerce)
- **product-listing** - WooCommerce/Shopify 批量产品上架
- **inventory-sync** - 自动库存同步
- **order-fulfillment** - 订单履约自动化
- **pricing-strategy** - 动态定价策略

### 📢 营销推广 (Marketing)
- **social-content** - 社交媒体内容生成（Facebook/Instagram/TikTok）
- **email-marketing** - 邮件营销自动化
- **seo-content** - SEO 优化内容写作
- **ads-campaign** - 广告投放管理（Facebook/Google Ads）

### 💻 Web 开发项目 (Web Projects)
- **requirement-analysis** - 客户需求分析与技术方案
- **ui-design** - UI/UX 设计规范
- **frontend-dev** - 前端开发（React/Vue/Next.js）
- **backend-dev** - 后端开发（API/数据库）
- **project-delivery** - 项目交付与部署

### 📊 数据分析 (Analytics)
- **market-research** - 市场调研与竞品分析
- **competitor-analysis** - 竞品监控
- **reporting** - 数据分析报告

## 🎯 适用场景

- ✅ **电商创业** - Dropshipping、零售电商运营
- ✅ **网页开发接单** - 快速交付客户项目
- ✅ **营销推广** - 社交媒体、广告投放、SEO
- ✅ **业务自动化** - 订单处理、库存管理、客服

## 🏢 背景故事

这些 Skills 来自于 [Oskris](https://oskris.com) 的真实业务场景：

- 🛒 **电商平台**: 运营游戏产品、Mac 生态、智能家居
- 💻 **Web 开发**: 为马来西亚本地企业提供网站开发服务
- 📈 **数字营销**: 社交媒体营销、SEO 优化实战经验

**所有 Skills 都经过真实业务验证，不是纸上谈兵。**

## 📚 使用示例

### 场景 1: 电商产品上架

```bash
# 安装 product-listing skill
npx skills add krisliong1/skills/product-listing

# 在 Claude 中使用
"帮我批量上架 50 个游戏鼠标产品到 WooCommerce"
```

### 场景 2: 网站需求分析

```bash
# 安装 requirement-analysis skill
npx skills add krisliong1/skills/requirement-analysis

# 在 Claude 中使用
"客户要做一个电商网站，帮我做需求分析和报价"
```

### 场景 3: 社交媒体内容

```bash
# 安装 social-content skill
npx skills add krisliong1/skills/social-content

# 在 Claude 中使用
"为我的新产品生成 Facebook 和 Instagram 推广文案"
```

## 🛠️ Skill 开发指南

每个 Skill 包含：
- **SKILL.md** - 核心流程和指南
- **scripts/** - 自动化脚本（Python/JavaScript）
- **templates/** - 文档模板（Markdown/JSON/Excel）

### Skill 标准结构

```
skill-name/
├── SKILL.md          # 主要说明文档
├── scripts/          # 可执行脚本
│   └── example.py
└── templates/        # 模板文件
    └── template.md
```

## 🤝 贡献指南

欢迎提交新的 Skills 或改进现有 Skills！

1. Fork 这个仓库
2. 创建新分支 (`git checkout -b feature/new-skill`)
3. 提交修改 (`git commit -am 'Add new skill'`)
4. 推送到分支 (`git push origin feature/new-skill`)
5. 创建 Pull Request

## 📄 License

MIT License - 详见 [LICENSE](LICENSE)

---

**Made with ❤️ by Kris Liong for [Oskris](https://oskris.com)**

*如有问题或建议，请联系: oskrismy@gmail.com*
