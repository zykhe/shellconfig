# super simple purple shell/terminal setup

A minimal, purple-themed terminal config that actually works.

## What You Get

- Clean zsh with good history
- Purple prompt (starship)
- Purple terminal colors (ghostty)
- Fuzzy finder for history/files
- Icons and colors for files
- GPG-signed commits

## Install Required Stuff
```bash
# Terminal emulator
brew install ghostty

# Shell tools
brew install starship fzf eza bat
brew install zsh-autosuggestions zsh-syntax-highlighting

# Font (for icons to work)
brew install font-fira-code-nerd-font
```

## Setup Files

Put these files in place:

- `~/.zshrc` - Shell config
- `~/.config/starship.toml` - Prompt config  
- `~/.config/ghostty/config` - Terminal colors