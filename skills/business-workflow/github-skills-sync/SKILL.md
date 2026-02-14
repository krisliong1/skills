---
name: github-skills-sync
description: Automatically sync and manage Kris Liong's GitHub skills repository. Use when the user wants to view, update, or work with their skills from https://github.com/krisliong1/skills without manually navigating file paths. This skill handles cloning, pulling, viewing, and organizing the skills repository.
---

# GitHub Skills Sync Skill

自动同步和管理 Kris 的 GitHub skills 仓库的专用 Skill。

## 何时使用这个 Skill

触发词/场景：
- "查看我的 skills"
- "同步 GitHub skills"
- "更新 skills 仓库"
- "看看 skills 里有什么"
- "打开某个 skill"
- "列出所有 skills"

## Skill 功能

### 1. 自动仓库管理
- 自动克隆仓库（如果不存在）
- 自动拉取最新更新
- 检查仓库状态
- 查看提交历史

### 2. Skills 浏览
- 列出所有可用的 Skills
- 按分类显示 Skills
- 查看特定 Skill 的内容
- 搜索 Skills

### 3. 内容查看
- 显示 README 和文档
- 查看 SKILL.md 文件
- 展示目录结构
- 提取关键信息

## 工作流程

### 第一次使用时

```bash
# 1. 检查仓库是否存在
if [ ! -d "/home/claude/kris-skills" ]; then
    # 2. 克隆仓库
    git clone https://github.com/krisliong1/skills.git /home/claude/kris-skills
    echo "✅ Skills 仓库已克隆"
fi

# 3. 进入仓库
cd /home/claude/kris-skills

# 4. 显示仓库信息
echo "📦 仓库路径: /home/claude/kris-skills"
git log --oneline -5
```

### 每次使用时

```bash
# 1. 进入仓库
cd /home/claude/kris-skills

# 2. 拉取最新更新
git pull origin main

# 3. 显示状态
echo "✅ 已同步到最新版本"
git log --oneline -1
```

## 核心命令

### 命令 1: 列出所有 Skills

```bash
# 进入仓库
cd /home/claude/kris-skills

# 列出所有 SKILL.md 文件
echo "=== 所有可用的 Skills ==="
find . -name "SKILL.md" -type f | while read file; do
    # 提取 skill 名称
    skill_path=$(dirname "$file")
    skill_name=$(basename "$skill_path")
    
    # 提取描述（从 SKILL.md 的前几行）
    description=$(head -20 "$file" | grep -E "^description:|^## " | head -1)
    
    echo ""
    echo "📁 $skill_name"
    echo "   路径: $skill_path"
    echo "   $description"
done
```

### 命令 2: 查看特定 Skill

```bash
# 参数: SKILL_NAME (例如: frontend-design)
SKILL_NAME="$1"

# 查找 SKILL.md
skill_file=$(find /home/claude/kris-skills -path "*/$SKILL_NAME/SKILL.md" -type f)

if [ -z "$skill_file" ]; then
    echo "❌ 未找到 Skill: $SKILL_NAME"
    echo "💡 使用 'list' 命令查看所有可用 Skills"
else
    echo "📖 查看 Skill: $SKILL_NAME"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    cat "$skill_file"
fi
```

### 命令 3: 按分类查看

```bash
cd /home/claude/kris-skills

echo "=== Claude AI Skills (claude-skills/) ==="
echo ""
echo "📂 Public Skills (核心生产级):"
ls -1 claude-skills/public/ 2>/dev/null | while read skill; do
    echo "  - $skill"
done

echo ""
echo "📂 Example Skills (高级场景):"
ls -1 claude-skills/examples/ 2>/dev/null | while read skill; do
    echo "  - $skill"
done

echo ""
echo "=== Kris 业务 Skills ==="
echo ""
echo "📂 电商运营 (ecommerce/):"
ls -1 ecommerce/ 2>/dev/null | while read skill; do
    echo "  - $skill"
done

echo ""
echo "📂 网页开发工作流 (skills/business-workflow/):"
ls -1 skills/business-workflow/ 2>/dev/null | while read skill; do
    echo "  - $skill"
done

echo ""
echo "📂 Web 项目 (web-projects/):"
ls -1 web-projects/ 2>/dev/null | while read skill; do
    echo "  - $skill"
done
```

### 命令 4: 搜索 Skills

```bash
# 参数: SEARCH_TERM
SEARCH_TERM="$1"

cd /home/claude/kris-skills

echo "🔍 搜索包含 '$SEARCH_TERM' 的 Skills..."
echo ""

# 在 SKILL.md 文件中搜索
grep -r -l -i "$SEARCH_TERM" --include="SKILL.md" . | while read file; do
    skill_path=$(dirname "$file" | sed 's|^\./||')
    skill_name=$(basename "$skill_path")
    
    # 显示匹配的行
    echo "📁 $skill_name"
    echo "   路径: $skill_path"
    grep -i -C 2 "$SEARCH_TERM" "$file" | head -5
    echo ""
done
```

## 使用示例

### 示例 1: 用户想查看所有 Skills

**用户**: "列出我的所有 skills"

**Skill 执行**:
```bash
cd /home/claude/kris-skills || git clone https://github.com/krisliong1/skills.git /home/claude/kris-skills
cd /home/claude/kris-skills
git pull origin main

# 列出所有 Skills
find . -name "SKILL.md" -not -path "*/\.*" | wc -l
echo "总共找到 X 个 Skills"

# 按分类显示
echo ""
echo "=== Claude AI Skills ==="
ls -1 claude-skills/public/
ls -1 claude-skills/examples/

echo ""
echo "=== 业务 Skills ==="
ls -1 skills/business-workflow/
```

### 示例 2: 查看特定 Skill

**用户**: "打开 frontend-design skill"

**Skill 执行**:
```bash
cd /home/claude/kris-skills
git pull origin main

# 查找并显示
view /home/claude/kris-skills/claude-skills/public/frontend-design/SKILL.md
```

### 示例 3: 搜索相关 Skills

**用户**: "找找跟电商有关的 skills"

**Skill 执行**:
```bash
cd /home/claude/kris-skills
git pull origin main

# 搜索 "电商" 或 "ecommerce"
grep -r -l -i "ecommerce\|电商\|商城" --include="*.md" . | head -10
```

### 示例 4: 查看仓库状态

**用户**: "skills 仓库有更新吗"

**Skill 执行**:
```bash
cd /home/claude/kris-skills
git fetch origin
git log HEAD..origin/main --oneline

# 如果有更新
if [ -n "$(git log HEAD..origin/main)" ]; then
    echo "📥 发现 X 个新提交"
    git log HEAD..origin/main --oneline
    echo ""
    echo "运行 'git pull' 来更新"
else
    echo "✅ 已是最新版本"
fi
```

## 智能特性

### 1. 自动初始化
- 第一次使用时自动克隆仓库
- 不需要用户手动配置路径
- 自动选择合适的工作目录

### 2. 智能搜索
- 支持中英文关键词
- 按相关性排序结果
- 显示上下文信息

### 3. 分类浏览
- Claude AI Skills (17个)
- Kris 业务 Skills (4个)
- 电商 Skills
- Web 项目 Skills

### 4. 快速访问
- 记住常用 Skills 路径
- 提供快捷命令
- 智能建议相关 Skills

## 高级功能

### 功能 1: 比较 Skills 版本

```bash
# 查看 Skill 的修改历史
cd /home/claude/kris-skills
SKILL_PATH="$1"

git log --oneline -- "$SKILL_PATH/SKILL.md"
echo ""
echo "查看某个提交的内容:"
echo "git show COMMIT_HASH:$SKILL_PATH/SKILL.md"
```

### 功能 2: 提取 Skill 元数据

```bash
# 从 SKILL.md 提取关键信息
extract_skill_info() {
    local skill_file="$1"
    
    echo "=== Skill 信息 ==="
    
    # 提取 name
    grep "^name:" "$skill_file" | sed 's/name: //'
    
    # 提取 description
    grep "^description:" "$skill_file" | sed 's/description: //'
    
    # 提取主要章节
    echo ""
    echo "=== 主要章节 ==="
    grep "^## " "$skill_file"
}
```

### 功能 3: 生成 Skills 目录

```bash
# 生成完整的 Skills 索引
generate_skill_index() {
    cd /home/claude/kris-skills
    
    cat > /tmp/skills-index.md << 'EOF'
# Skills 完整索引
生成时间: $(date)

## Claude AI Skills

### Public Skills
EOF
    
    # 遍历所有 Skills
    for skill in claude-skills/public/*/; do
        skill_name=$(basename "$skill")
        echo "- **$skill_name**" >> /tmp/skills-index.md
        
        # 提取描述
        if [ -f "$skill/SKILL.md" ]; then
            description=$(grep "^description:" "$skill/SKILL.md" | sed 's/description: //')
            echo "  - $description" >> /tmp/skills-index.md
        fi
    done
    
    cat /tmp/skills-index.md
}
```

## 错误处理

### 错误 1: 仓库不存在
```bash
if [ ! -d "/home/claude/kris-skills" ]; then
    echo "📥 首次使用，正在克隆仓库..."
    git clone https://github.com/krisliong1/skills.git /home/claude/kris-skills
fi
```

### 错误 2: 网络问题
```bash
if ! git pull origin main 2>/dev/null; then
    echo "⚠️  网络连接问题，使用本地版本"
    echo "📅 最后更新: $(git log -1 --format=%cd)"
fi
```

### 错误 3: Skill 不存在
```bash
if [ ! -f "$skill_file" ]; then
    echo "❌ 未找到 Skill: $skill_name"
    echo ""
    echo "💡 可能的原因："
    echo "   1. Skill 名称拼写错误"
    echo "   2. Skill 在不同的分类下"
    echo ""
    echo "试试搜索: grep -r -i '$skill_name' ."
fi
```

## 快捷命令

定义一些常用的快捷命令：

### 快捷命令表

| 用户说... | Skill 执行... |
|----------|--------------|
| "ls skills" | 列出所有 Skills |
| "show frontend-design" | 查看 frontend-design Skill |
| "search 电商" | 搜索电商相关 Skills |
| "update skills" | 拉取最新更新 |
| "skills status" | 查看仓库状态 |
| "claude skills" | 列出所有 Claude AI Skills |
| "business skills" | 列出所有业务 Skills |

## 输出格式

### 列表输出
```
=== 所有可用的 Skills (36个) ===

📂 Claude AI Skills (17个)
  Public Skills (6个):
    ✅ docx - Word 文档处理
    ✅ pdf - PDF 全能操作
    ✅ pptx - PowerPoint 演示
    ✅ xlsx - Excel 表格
    ✅ frontend-design - 前端设计专家
    ✅ product-self-knowledge - Anthropic 产品知识
  
  Example Skills (11个):
    ✅ doc-coauthoring - 文档协作
    ✅ web-artifacts-builder - 复杂Web组件
    ... (更多)

📂 Kris 业务 Skills (4个)
    ✅ requirements-analyst - 需求分析师
    ✅ design-consultant - 设计顾问
    ✅ frontend-builder - 前端开发
    ✅ project-workflow - 项目管理
```

### Skill 详情输出
```
📖 Skill: frontend-design
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📍 路径: claude-skills/public/frontend-design/
📝 描述: 创建高质量前端界面设计

=== 主要功能 ===
- 设计独特风格界面
- 避免AI通用审美
- 响应式布局
- React/Vue/HTML 组件

=== 何时使用 ===
- 网站设计
- 落地页创建
- 组件开发
- UI/UX 设计

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💡 完整内容: view /home/claude/kris-skills/claude-skills/public/frontend-design/SKILL.md
```

## 最佳实践

### 1. 保持同步
每次使用前自动 `git pull`，确保使用最新版本。

### 2. 智能缓存
缓存常用 Skills 的路径，加快访问速度。

### 3. 上下文感知
根据用户当前任务推荐相关 Skills。

### 4. 简化输出
只显示用户需要的信息，避免信息过载。

## 集成建议

### 与其他 Skills 配合

**与 doc-coauthoring 配合**:
```
用户: "帮我写个项目提案"
→ 1. github-skills-sync 查找 requirements-analyst
→ 2. 使用 requirements-analyst 收集需求
→ 3. 使用 doc-coauthoring 生成文档
```

**与 frontend-design 配合**:
```
用户: "设计一个电商首页"
→ 1. github-skills-sync 查找 frontend-design
→ 2. 使用 frontend-design 创建设计
→ 3. 使用 web-artifacts-builder 实现代码
```

## 总结

这个 Skill 让你可以：
- ✅ 不需要记住文件路径
- ✅ 自动同步最新版本
- ✅ 快速查找和访问 Skills
- ✅ 智能搜索和推荐
- ✅ 无缝集成到工作流

**核心优势**: 一句话就能访问和使用你 GitHub 上的所有 Skills！
