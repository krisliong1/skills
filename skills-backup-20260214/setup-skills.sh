#!/bin/bash

# Skills 仓库自动化创建脚本
# 作者: Kris Liong
# 网站: oskris.com

set -e  # 遇到错误立即停止

echo "🚀 开始创建 Skills 仓库..."

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 检查是否在正确的目录
REPO_DIR="$HOME/Projects/skills"

echo -e "${BLUE}📁 创建项目目录...${NC}"
mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

# 初始化 Git
echo -e "${BLUE}🔧 初始化 Git 仓库...${NC}"
git init
git remote add origin https://github.com/krisliong1/skills.git

# 创建目录结构
echo -e "${BLUE}📂 创建目录结构...${NC}"

# 主目录
mkdir -p ecommerce marketing web-projects analytics

# 电商相关
mkdir -p ecommerce/product-listing/{scripts,templates}
mkdir -p ecommerce/inventory-sync/{scripts,config}
mkdir -p ecommerce/order-fulfillment/{scripts,templates}
mkdir -p ecommerce/pricing-strategy/{scripts,templates}

# 营销推广
mkdir -p marketing/social-content/{scripts,templates}
mkdir -p marketing/email-marketing/{scripts,templates}
mkdir -p marketing/seo-content/{scripts,templates}
mkdir -p marketing/ads-campaign/{scripts,templates}

# Web 开发项目
mkdir -p web-projects/requirement-analysis/{scripts,templates}
mkdir -p web-projects/ui-design/{scripts,templates}
mkdir -p web-projects/frontend-dev/{scripts,templates}
mkdir -p web-projects/backend-dev/{scripts,templates}
mkdir -p web-projects/project-delivery/{scripts,templates}

# 数据分析
mkdir -p analytics/market-research/{scripts,templates}
mkdir -p analytics/competitor-analysis/{scripts,templates}
mkdir -p analytics/reporting/{scripts,templates}

echo -e "${GREEN}✅ 目录结构创建完成${NC}"

# 创建 README.md
echo -e "${BLUE}📝 创建 README.md...${NC}"
cat > README.md << 'EOF'
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
EOF

echo -e "${GREEN}✅ README.md 创建完成${NC}"

# 创建 LICENSE
echo -e "${BLUE}📝 创建 LICENSE...${NC}"
cat > LICENSE << 'EOF'
MIT License

Copyright (c) 2026 Kris Liong (Oskris.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

echo -e "${GREEN}✅ LICENSE 创建完成${NC}"

# 创建 .gitignore
echo -e "${BLUE}📝 创建 .gitignore...${NC}"
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
.venv
pip-log.txt

# Secrets
.env
config/secrets.json
*.key
*.pem

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db

# Output files
output/
temp/
*.csv
*.xlsx
*.pdf

# Node
node_modules/
npm-debug.log

# Logs
*.log
logs/
EOF

echo -e "${GREEN}✅ .gitignore 创建完成${NC}"

# 创建第一个示例 Skill: product-listing
echo -e "${BLUE}📝 创建示例 Skill: product-listing...${NC}"
cat > ecommerce/product-listing/SKILL.md << 'EOF'
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
EOF

echo -e "${GREEN}✅ product-listing Skill 创建完成${NC}"

# 创建第二个示例 Skill: requirement-analysis
echo -e "${BLUE}📝 创建示例 Skill: requirement-analysis...${NC}"
cat > web-projects/requirement-analysis/SKILL.md << 'EOF'
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

根据客户需求，判断项目类型和复杂度：

#### **A. 企业官网（预算: RM 2,000 - 5,000）**

**适用场景：**
- 公司介绍展示
- 产品/服务展示
- 联系方式

**必备功能：**
- ✅ 响应式设计（手机/平板/电脑）
- ✅ 公司介绍页面
- ✅ 产品/服务展示
- ✅ 联系表单
- ✅ Google Maps 集成

**技术方案：**
- 前端：Next.js + Tailwind CSS
- CMS：WordPress (可选)
- 部署：Vercel / Netlify
- 周期：2-3 周

---

#### **B. 电商网站（预算: RM 5,000 - 15,000）**

**适用场景：**
- 在线销售产品
- 购物车和支付
- 订单管理

**必备功能：**
- ✅ 产品目录（分类/搜索/筛选）
- ✅ 购物车系统
- ✅ 支付集成（Stripe/FPX/PayPal）
- ✅ 订单管理后台
- ✅ 用户账户系统
- ✅ 库存管理

**技术方案：**
- 方案 1：WooCommerce (WordPress)
- 方案 2：Shopify
- 方案 3：定制开发 (React + Node.js)
- 周期：4-6 周

---

#### **C. 定制 Web 应用（预算: RM 15,000+）**

**适用场景：**
- 复杂业务逻辑
- 用户系统
- 数据分析

**常见功能：**
- ✅ 用户注册/登录系统
- ✅ 角色权限管理
- ✅ 数据仪表板
- ✅ API 集成
- ✅ 文件上传/管理
- ✅ 实时通知

**技术方案：**
- 前端：React / Next.js
- 后端：Node.js / Python
- 数据库：PostgreSQL / Supabase
- 部署：AWS / Vercel
- 周期：8-12 周

### 第 3 步：生成需求文档

使用模板输出完整需求文档：

```markdown
# 项目需求文档

**客户名称**: [公司名称]
**联系人**: [姓名]
**联系方式**: [电话/邮箱]
**日期**: 2026-02-14

---

## 1. 项目概述

**项目类型**: 企业官网  
**目标**: 展示公司业务，吸引潜在客户  
**预算**: RM 4,000  
**周期**: 3 周

---

## 2. 功能需求

### 2.1 首页
- 轮播 Banner（3-5 张）
- 公司简介
- 核心服务展示（卡片式）
- 客户案例/合作伙伴
- 联系表单

### 2.2 关于我们
- 公司历史
- 团队介绍
- 企业文化
- 联系方式 + Google Maps

### 2.3 产品/服务页面
- 服务分类导航
- 详细介绍
- 图文并茂
- 询价表单

### 2.4 联系我们
- 联系表单
- 地址 + 地图
- 营业时间
- 社交媒体链接

---

## 3. 技术方案

**前端框架**: Next.js 14 + Tailwind CSS  
**后端**: Supabase (表单数据存储)  
**部署平台**: Vercel  
**域名**: 客户提供  
**SSL 证书**: Let's Encrypt (免费)

**响应式设计**: 
- ✅ 手机端
- ✅ 平板端
- ✅ 桌面端

---

## 4. 项目报价

| 项目 | 费用 |
|------|------|
| 网站设计开发 | RM 3,500 |
| 域名托管 (1年) | RM 150 |
| SSL 证书 | 免费 |
| 培训与交付 | RM 350 |
| **总计** | **RM 4,000** |

**付款方式**:
- 首付 50%: RM 2,000 (签约时)
- 尾款 50%: RM 2,000 (验收完成后)

---

## 5. 项目时间表

| 阶段 | 工作内容 | 时间 |
|------|---------|------|
| Week 1 | 设计稿确认 | 2-3 天 |
| Week 2 | 前端开发 | 5-7 天 |
| Week 3 | 测试部署 | 2-3 天 |
| Week 3 | 培训交付 | 1 天 |

**预计上线日期**: 2026-03-07

---

## 6. 售后维护（可选）

- 月度维护: RM 200/月
- 包含: 内容更新、bug 修复、性能优化
- 不包含: 新功能开发

---

**备注**:
- 客户提供: Logo、产品图片、文字内容
- 修改次数: 设计稿 2 次，开发阶段 1 次重大修改
- 超出范围的功能需额外报价
```

### 第 4 步：客户确认

发送需求文档给客户，确认：
- ✅ 功能范围清晰
- ✅ 技术方案可行
- ✅ 预算和时间合理
- ✅ 支付条款明确

## 模板文件

### `templates/client-questionnaire.md`
客户需求问卷模板

### `templates/requirement-doc-template.md`
需求文档标准模板

### `templates/quotation-template.md`
项目报价单模板

## 最佳实践

1. **明确范围** - 避免"无限修改"陷阱
2. **分期付款** - 首付 50%，交付后付尾款
3. **书面确认** - 所有需求必须书面确认
4. **预留缓冲** - 时间预留 20% 缓冲
5. **超范围收费** - 明确哪些功能需额外收费

## 常见问题处理

### Q1: 客户要求"参考某某网站"

**处理方法：**
1. 分析该网站的具体功能点
2. 明确哪些功能是必要的
3. 哪些可以简化或替换
4. 给出技术实现方案和成本

---

### Q2: 客户预算不够

**处理方法：**
1. 提供 MVP 方案（最小可行产品）
2. 分阶段开发
   - 阶段 1: 核心功能 (RM 3,000)
   - 阶段 2: 增强功能 (RM 2,000)
3. 推荐成本更低的技术方案
   - WordPress 模板 (vs 定制开发)
   - Shopify (vs 自建电商)

---

### Q3: 客户不确定要什么功能

**处理方法：**
1. 展示同行业案例网站
2. 列出行业标配功能
3. 引导客户做选择题而非填空题
4. 从小做起，后续迭代

---

### Q4: 时间要求不合理

**处理方法：**
1. 说明各阶段所需时间
2. 提供快速方案（成本更高）
3. 或延长周期（成本降低）
4. 明确赶工费标准

## 报价参考标准

### 马来西亚市场（2026）

| 项目类型 | 价格区间 | 周期 |
|---------|---------|------|
| 简单官网 | RM 2,000 - 5,000 | 2-3 周 |
| 企业网站 | RM 5,000 - 10,000 | 3-4 周 |
| 电商网站 | RM 10,000 - 20,000 | 4-8 周 |
| 定制应用 | RM 20,000+ | 8-12 周 |

**按小时收费**: RM 150 - 300/小时

## 使用示例

```
用户: "客户要做一个建筑公司的网站，预算 RM 5,000"

Claude 会：
1. 加载 requirement-analysis skill
2. 提出标准问卷
3. 分析客户需求
4. 判断项目类型（企业官网）
5. 生成需求文档
6. 输出技术方案和报价
7. 提供项目时间表
```

---

**© 2026 Oskris.com | 联系: oskrismy@gmail.com**
EOF

echo -e "${GREEN}✅ requirement-analysis Skill 创建完成${NC}"

# 提交到 Git
echo -e "${BLUE}📤 提交到 Git...${NC}"
git add .
git commit -m "Initial commit: Skills repository structure

- Created directory structure for ecommerce, marketing, web-projects, analytics
- Added README.md with complete documentation
- Added LICENSE (MIT)
- Added .gitignore
- Created example skills:
  - ecommerce/product-listing
  - web-projects/requirement-analysis
  
Made with ❤️ by Kris Liong for Oskris.com"

# 推送到 GitHub
echo -e "${BLUE}🚀 推送到 GitHub...${NC}"
git branch -M main
git push -u origin main

echo ""
echo -e "${GREEN}🎉 完成！Skills 仓库已创建成功！${NC}"
echo ""
echo -e "${BLUE}📍 仓库地址:${NC}"
echo "   https://github.com/krisliong1/skills"
echo ""
echo -e "${BLUE}🎯 下一步:${NC}"
echo "   1. 访问 https://skills.sh 查看你的 Skills"
echo "   2. 使用命令安装: npx skills add krisliong1/skills/product-listing"
echo "   3. 在 Claude 中使用这些 Skills"
echo ""
echo -e "${GREEN}✨ Happy Coding! - Kris @ Oskris.com${NC}"
