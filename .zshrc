# Plugin Manager
source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle themes
antigen bundle bgnotify
antigen bundle archlinux
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle command-not-found
antigen bundle emoji-clock
antigen bundle sudo

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# ENVs
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Aliases
alias ls="eza --icons"
alias la="eza --icons -la"
alias cat="bat --style=auto"

# User configuration
TTY_COLOR_SCHEME=~/.cache/wal/sequences
if [ ! -f "$TTY_COLOR_SCHEME" ]; then
	wallpaper ~/.config/hypr/wallpaper
fi

if [ -f "$TTY_COLOR_SCHEME" ]; then
	(/bin/cat $TTY_COLOR_SCHEME &)
fi

# Oh-My-Posh
eval "$(oh-my-posh init zsh --config ${HOME}/.config/oh-my-posh/config.omp.json)"
