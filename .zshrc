# ============================================================================
# Clean Zsh Configuration
# ============================================================================

# ============================================================================
# HISTORY
# ============================================================================

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_DUPS          # Don't record duplicates
setopt HIST_FIND_NO_DUPS         # Don't show duplicates in search
setopt SHARE_HISTORY             # Share history between sessions
setopt APPEND_HISTORY            # Append to history file

# ============================================================================
# COMPLETION
# ============================================================================

autoload -Uz compinit && compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Use menu for completion
zstyle ':completion:*' menu select

# ============================================================================
# KEY BINDINGS
# ============================================================================

bindkey -e  # Emacs-style keys

# Better history search
bindkey '^[[A' history-search-backward  # Up arrow
bindkey '^[[B' history-search-forward   # Down arrow

# ============================================================================
# HOMEBREW PLUGINS
# ============================================================================

# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf fuzzy finder
eval "$(fzf --zsh)"

# ============================================================================
# SIMPLE ALIASES
# ============================================================================

alias ll='ls -lh'
alias la='ls -lah'
alias ..='cd ..'
alias ...='cd ../..'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'

# ============================================================================
# ENVIRONMENT
# ============================================================================

export EDITOR='nano'
export GPG_TTY=$(tty)

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# ============================================================================
# PROMPT (Optional - comment out if you don't want starship)
# ============================================================================

eval "$(starship init zsh)"

export GPG_TTY=$(tty)

# ============================================================================
# COLORFUL TOOLS
# ============================================================================

# eza - colorful ls with icons
if command -v eza &> /dev/null; then
  alias ls='eza --icons --group-directories-first'
  alias ll='eza -lh --icons --group-directories-first'
  alias la='eza -lah --icons --group-directories-first'
  alias lt='eza --tree --level=2 --icons'
fi

# bat - colorful cat with syntax highlighting
if command -v bat &> /dev/null; then
  alias cat='bat --style=auto'
  export BAT_THEME="TwoDark"
fi

# Colorful grep
alias grep='grep --color=auto'

# Git with colors
alias glog='git log --oneline --graph --decorate --color=always'
alias gd='git diff --color=always'