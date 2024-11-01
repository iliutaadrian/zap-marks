# ZapMarks

> Quick access to your most-used command-line bookmarks for Zsh

![Screenshot 2024-10-13 at 11 09 56](https://github.com/user-attachments/assets/3eabda30-25a2-45c0-bb12-329628a255c1)

ZapMarks is a powerful Zsh plugin that streamlines your command-line workflow by providing instant access to frequently used commands through an intuitive bookmark system.

## ✨ Features

- 🔍 **Smart Search**: Fuzzy search through your bookmarked commands
- 👀 **Command Preview**: See command details before execution
- ⚡️ **Quick Add**: Bookmark new commands directly from the terminal
- 🛠 **Easy Management**: Edit bookmarks with your preferred editor
- 🚀 **High Performance**: Optimized performance using fzf and jq

## 🚀 Quick Start

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/iliutaadrian/zapmarks/main/scripts/install.sh)"
```

After installation, restart your terminal or run:
```bash
source ~/.zshrc
```

## 📋 Prerequisites

Before installing, ensure you have:

- Zsh shell
- [fzf](https://github.com/junegunn/fzf) - Command-line fuzzy finder
- [jq](https://stedolan.github.io/jq/) - Lightweight command-line JSON processor

## 💻 Installation

### Option 1: Automated Installation (Recommended)

The automated installation script will:
1. Clone the repository to the appropriate location
2. Configure your Zsh setup
3. Install the default bookmarks file

### Option 2: Manual Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/iliutaadrian/zapmarks.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zapmarks
   ```

2. Run the installation script:
   ```bash
   ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zapmarks/scripts/install.sh
   ```

3. Add the plugin to your `.zshrc`:
   ```zsh
   plugins=(... zapmarks)
   ```

## 🎯 Usage

### Basic Commands

| Command | Description |
|---------|-------------|
| `CTR+B` | Open the bookmark fuzzy finder |
| `zapmarks-add` | Add a new bookmark |
| `zapmarks-edit` | Edit bookmarks file |

### Example Workflow

1. Save a frequently used command:
   ```bash
   zapmarks-add
   # Follow the prompts to add your command
   ```

2. Press `Alt+B` to access your bookmarks
3. Type to fuzzy search through your commands
4. Press Enter to execute the selected command

## 📁 Configuration

ZapMarks stores its configuration in `~/.zapmarks.json`. The file structure is:

```json
{
  "bookmarks": [
    {
      "command": "git status",
      "description": "Check git status",
      "tags": ["git", "status"]
    }
  ]
}
```

## 🙏 Acknowledgments

- [fzf](https://github.com/junegunn/fzf) for the amazing fuzzy finder
- [jq](https://stedolan.github.io/jq/) for JSON processing
- [Oh My Zsh](https://ohmyz.sh/) for the plugin infrastructure
