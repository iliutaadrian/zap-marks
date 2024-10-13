# zap-marks
 Zsh plug# ZapMarks

ZapMarks is a Zsh plugin that provides quick access to your most used command-line bookmarks. It allows you to save, search, and execute complex commands with ease.

## Features

- Fuzzy search through your bookmarked commands
- Preview command details before execution
- Add new bookmarks directly from the command line
- Edit bookmarks file with your preferred editor
- Fast and efficient, powered by fzf and jq

## Installation

### Prerequisites

- Zsh
- [fzf](https://github.com/junegunn/fzf)
- [jq](https://stedolan.github.io/jq/)

### Manual Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/zapmarks.git ~/.zsh/zapmarks
   ```

2. Add the following to your `.zshrc`:
   ```zsh
   source ~/.zsh/zapmarks/zapmarks.plugin.zsh
   ```

### Using a Zsh Plugin Manager

#### zinit
Add this to your `.zshrc`:
```zsh
zinit light yourusername/zapmarks
```

#### Oh My Zsh
1. Clone the repository into your custom plugins directory:
   ```
   git clone https://github.com/yourusername/zapmarks.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zapmarks
   ```
2. Add `zapmarks` to your plugin list in `.zshrc`:
   ```zsh
   plugins=(... zapmarks)
   ```

## Usage

- Press `Ctrl+B` to open the bookmark fuzzy finder
- Use `zapmarks-add` to add a new bookmark
- Use `zapmarks-edit` to edit your bookmarks file directly

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.in that provides quick access to your most used command-line bookmarks
