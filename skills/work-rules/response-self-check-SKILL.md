---
name: response-self-check
description: Self-check skill for Claude to verify responses before sending. Prevents confusing placeholders, ensures clarity, and validates instructions are executable without user modifications.
---

# Response Self-Check Skill

## 目的
在每次回复用户之前，自我检查确保：
1. ❌ 没有需要用户"填写"的占位符
2. ✅ 所有命令都可以直接执行
3. ✅ 说明清晰明确
4. ✅ 不让用户困惑

## 触发时机
**每次给用户命令、代码、或操作步骤之前**，必须先运行这个检查。

## 检查清单

### ❌ 禁止出现的模式

**1. 占位符需要用户填写**
```
❌ 错误示例：
- "替换为你的路径"
- "(你的用户名)"
- "填写你的邮箱"
- "改成实际的..."
- "<your-value-here>"

✅ 正确做法：
- 直接给出可执行的命令
- 或者先问用户获取信息，再生成
```

**2. 示例界面包含占位符**
```
❌ 错误示例：
Session Status     online
Account           (你的账号)  ← 这会让用户以为要填

✅ 正确做法：
Session Status     online
Account           your-email@example.com  ← 说明这是自动显示的
```

**3. 模糊的指示**
```
❌ 错误示例：
- "根据你的情况修改"
- "按需调整"
- "可能需要改动"

✅ 正确做法：
- 明确说明要改什么
- 或者提供完全可用的默认值
```

### ✅ 必须做到的标准

**1. 命令可直接执行**
```python
# 检查每个命令
for command in response_commands:
    if has_placeholder(command):
        # 标记错误
        flag_error(f"命令包含占位符: {command}")
    
    if needs_user_input(command):
        # 必须先询问用户
        ask_user_first(command)
```

**2. 说明清晰无歧义**
```
✅ 好的说明：
"运行这个命令，ngrok 会自动显示 URL，你复制给我即可"

❌ 差的说明：
"运行后看到的 URL 填在这里"
```

**3. 示例代码完整可用**
```
✅ 提供完整可运行的代码
❌ 提供需要"补全"的代码片段
```

## 自检流程

### 步骤 1: 扫描回复内容
```python
def self_check_response(response):
    issues = []
    
    # 检查占位符
    placeholders = [
        r'\(你的.*?\)',
        r'\(your.*?\)',
        r'<.*?>',
        r'替换为',
        r'改成',
        r'填写'
    ]
    
    for pattern in placeholders:
        if re.search(pattern, response):
            issues.append(f"发现占位符: {pattern}")
    
    return issues
```

### 步骤 2: 验证命令
```python
def check_commands(response):
    # 提取所有代码块
    commands = extract_code_blocks(response)
    
    for cmd in commands:
        # 检查是否包含变量需要替换
        if '${' in cmd or '$(' in cmd:
            if not explained_clearly(cmd):
                flag("命令包含变量但未说明清楚")
        
        # 检查是否有注释要求修改
        if '# 改成' in cmd or '# 替换' in cmd:
            flag("注释要求用户修改代码")
```

### 步骤 3: 修正问题

**问题类型 A: 需要用户信息**
```
❌ 直接给带占位符的命令
✅ 先问用户，再生成完整命令

例如：
"你的 skills 目录在哪里？"
→ 用户回答后
→ 生成包含实际路径的命令
```

**问题类型 B: 示例界面**
```
❌ Account: (你的账号)
✅ Account: your-email@example.com
   ↑ 说明：这是 ngrok 自动显示的，不需要你填
```

**问题类型 C: 可选配置**
```
❌ "改成你的端口"
✅ "默认使用 8080 端口，如需修改请告诉我"
```

## 实际案例修正

### 案例 1: ngrok 示例界面

**❌ 之前的错误：**
```
Account           (你的账号)
```
用户看到后以为要填写账号。

**✅ 正确做法：**
```
Account           user@example.com  ← ngrok 自动显示，无需填写
```
或者：
```
说明：运行 ngrok http 8080 后，界面会自动显示你的账号信息
你只需要复制 Forwarding 那一行的 URL 给我
```

### 案例 2: 路径占位符

**❌ 之前的错误：**
```bash
cd ~/path/to/skills  # 替换为你的实际路径
```

**✅ 正确做法：**
```
先问：你的 skills 目录在哪里？

用户回答：~/Desktop/skills

然后给：
cd ~/Desktop/skills
```

### 案例 3: 配置文件

**❌ 之前的错误：**
```python
cwd='/Users/你的用户名/Desktop/skills',  # 改成实际路径
```

**✅ 正确做法：**
```
我需要知道你的用户名来生成完整代码。

你的 Mac 用户名是什么？
(运行 whoami 可以查看)

→ 用户提供后生成完整代码
```

## 执行规则

**规则 1: 回复前必检查**
每次包含命令、代码、配置的回复，都必须先过这个检查。

**规则 2: 发现问题必修正**
- 不能"带着问题"发送给用户
- 必须先修正或先询问用户

**规则 3: 优先完整方案**
- 能给完整可执行的，不给半成品
- 需要信息的，先问清楚

**规则 4: 说明要明确**
- 什么是自动的 → 明确说明
- 什么需要用户做 → 列出清晰步骤
- 什么是可选的 → 提供默认值

## 快速检查表

发送回复前问自己：

- [ ] 代码可以直接复制粘贴运行吗？
- [ ] 有任何 "(你的...)" 占位符吗？
- [ ] 示例输出会让用户误以为要填写吗？
- [ ] 需要用户提供信息但我没先问吗？
- [ ] 说明清晰明确无歧义吗？

**只有全部 ✅ 才能发送！**

## 紧急修正流程

如果用户指出了这类问题：

**步骤 1: 立即道歉**
```
"抱歉！我不应该让你填写占位符。"
```

**步骤 2: 立即修正**
```
提供正确的、可执行的版本
```

**步骤 3: 记录到 Memory**
```
用户反馈：不要使用需要填写的占位符
记住：所有命令都应该直接可执行
```

**步骤 4: 创建防范机制**
```
如本 Skill 所示，建立自检流程
```

## 总结

**核心原则**:
> 给用户的所有东西都应该是"拿来即用"的，
> 不是"需要改改才能用"的。

**记住**:
- ❌ 不要 `(你的账号)` 
- ❌ 不要 `替换为实际路径`
- ❌ 不要 `改成你的值`
- ✅ 要么直接给完整的
- ✅ 要么先问用户再生成

**这个 Skill 应该内化为每次回复的习惯！**
