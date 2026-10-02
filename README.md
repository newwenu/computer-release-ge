# 计算机系统通识

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](LICENSE) [![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-brightgreen)](https://newwenu.github.io/computer-release-ge/)

> 面向所有想知道"计算机到底怎么工作"的读者 —— 从比特到人工智能，一本书建立完整的计算机世界观。

## 这本书适合谁？

- **计算机专业学生** — 会写代码但想补齐"从晶体管到操作系统"的系统性理解
- **非计算机专业的本科生/研究生** — 想建立计算机的完整世界观
- **职场开发者** — 每天用框架但想理解底层发生了什么
- **好奇的普通人** — 想知道"电脑到底是怎么工作的"

不假设你学过编程、懂数学或拆过电脑。

## 为什么读这本书？

### 🎯 核心特色

1. **真正的零基础** - 从"什么是信息"讲起，不跳步、不省略
2. **完整的知识体系** - 7 大部分、27 章，覆盖从硬件到软件、从本地到网络的完整链条
3. **注重直觉而非公式** - 用生活中的类比帮助理解抽象概念
4. **配套插图丰富** - 每章包含精心绘制的示意图，降低认知负担

### 📚 内容概览

本书按照**从底层到上层**的逻辑组织：

| 部分 | 主题 | 章节 | 核心问题 |
|------|------|------|----------|
| Part 1 | 信息与编码 | 1-3 | 计算机如何表示世界？ |
| Part 2 | 硬件基础 | 4-7 | 电路如何变成"智能"？ |
| Part 3 | 体系结构 | 8-11 | CPU 如何高效执行程序？ |
| Part 4 | 操作系统 | 12-17 | 软件如何管理硬件？ |
| Part 5 | 计算机网络 | 18-21 | 数据如何在全球传输？ |
| Part 6 | 软件与数据 | 22-25 | 云计算、AI 是什么？ |
| Part 7 | 安全与隐私 | 26-27 | 如何保护数字生活？ |

## 🚀 快速开始

### 在线阅读（推荐）

🔗 **[https://newwenu.github.io/computer-release-ge/](https://newwenu.github.io/computer-release-ge/)**

### 本地构建

**前置要求**：安装 [Quarto](https://quarto.org/docs/get-started/)

```bash
git clone https://github.com/newwenu/computer-release-ge.git
cd computer-release-ge
quarto render          # 渲染为 HTML（推荐）
# quarto render --to pdf  # 或渲染为 PDF
```

## 📊 写作进度

> 🚧 **27 章初稿已完成（7 大部分全部），持续修订中** · 最后更新 2026-10-02

## 🤝 反馈与交流

如果您在阅读过程中发现问题或有建议：
- 🔤 错别字或排版错误
- 💡 技术性错误或不准确之处
- 🤔 表述不清楚、难以理解的段落
- 💡 改进建议或新的类比思路

欢迎通过以下方式反馈：
- **提交 Issue** - [点击创建新 Issue](https://github.com/newwenu/computer-release-ge/issues/new)
- **提交 Pull Request** - 欢迎直接修复错别字、补充内容或改进表述
- **邮件联系** - （后续补充）

## 📄 许可证

本项目采用 [CC BY-SA 4.0](LICENSE)（知识共享 署名-相同方式共享 4.0 国际）许可证。可自由分享与改编，需署名并以相同许可证分发。

## 🛠️ 技术栈

- **文档框架**: [Quarto](https://quarto.org/) - 科学与技术出版系统
- **标记语言**: Markdown + Quarto 扩展 (.qmd)
- **参考文献**: BibTeX
- **部署**: GitHub Actions → GitHub Pages
- **版本控制**: Git
