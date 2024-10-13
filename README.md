# ZapMarks

![Screenshot 2024-10-13 at 11 09 56](https://github.com/user-attachments/assets/3eabda30-25a2-45c0-bb12-329628a255c1)

ZapMarks is a Zsh plugin that provides quick access to your most used command-line bookmarks. It allows you to save, search, and execute complex commands with ease.

## Features

- Fuzzy search through your bookmarked commands
- Preview command details before execution
- Add new bookmarks directly from the command line
- Edit bookmarks file with your preferred editor
- Fast and efficient, powered by fzf and jq

## Prerequisites

- Zsh
- [fzf](https://github.com/junegunn/fzf)
- [jq](https://stedolan.github.io/jq/)

## Installation

### Automated Installation (Recommended)

Run the following command in your terminal:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/iliutaadrian/zapmarks/main/scripts/install.sh)"
```

This script will:
1. Clone the ZapMarks repository to the appropriate location
2. Set up the plugin for your Zsh configuration
3. Install the example `zapmarks.json` file

After running the script, restart your terminal or run `source ~/.zshrc`.

### Manual Installation

If you prefer to install manually:

1. Clone the repository:
   ```bash
   git clone https://github.com/iliutaadrian/zapmarks.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zapmarks
   ```

2. Run the install script:
   ```bash
   ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zapmarks/scripts/install.sh
   ```

3. Add `zapmarks` to your plugin list in `.zshrc`:
   ```zsh
   plugins=(... zapmarks)
   ```

4. Restart your terminal or run `source ~/.zshrc`.

## Usage

- Press `Alt+B` to open the bookmark fuzzy finder
- Use `zapmarks-add` to add a new bookmark
- Use `zapmarks-edit` to edit your bookmarks file directly

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
