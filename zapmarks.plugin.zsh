# ZapMarks - Quick command bookmarks for Zsh
# File: zapmarks.plugin.zsh
# Author: [Iliuta Adrian](https://github.com/iliutaadrian)

ZAPMARKS_FILE="$HOME/.config/zapmarks.json"

zapmarks() {
    local selected_command

    # Check if jq is installed
    if ! command -v jq &> /dev/null; then
        echo "jq is not installed. Please install it to use ZapMarks."
        return 1
    fi

    # Create the bookmarks file if it doesn't exist
    [ ! -f "$ZAPMARKS_FILE" ] && echo '[]' > "$ZAPMARKS_FILE"

    # Use fzf to select a command from the bookmarks file
    selected_command=$(jq -r '.[] | "\(.command)\t\(.description)"' "$ZAPMARKS_FILE" | \
        fzf --height 40% \
            --reverse \
            --preview 'echo -e "Command:\n{1}\n\nDescription:\n{2}"' \
            --preview-window right:50%:wrap \
            --bind 'ctrl-/:change-preview-window(down|hidden|)' \
            --delimiter '\t' \
            --with-nth 1)

    if [ -n "$selected_command" ]; then
        BUFFER=$(echo "$selected_command" | cut -f1)
        CURSOR=$#BUFFER
        zle redisplay
    fi
}

# Create a widget from the function
zle -N zapmarks

# Bind the widget to Ctrl+B
bindkey '^B' zapmarks

# Function to add a new bookmark
zapmarks-add() {
    local command description
    echo "Enter the command to bookmark:"
    read -r command
    echo "Enter a short description:"
    read -r description
    jq --arg cmd "$command" --arg desc "$description" '. += [{"command": $cmd, "description": $desc}]' "$ZAPMARKS_FILE" > "$ZAPMARKS_FILE.tmp" && mv "$ZAPMARKS_FILE.tmp" "$ZAPMARKS_FILE"
    echo "Bookmark added successfully!"
}

# Function to edit bookmarks file
zapmarks-edit() {
    ${EDITOR:-nvim} "$ZAPMARKS_FILE"
}

# Make functions available as commands
alias zapmarks-add='zapmarks-add'
alias zapmarks-edit='zapmarks-edit'
