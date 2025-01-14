source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

export EDITOR='nvim'
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib

alias ll='ls -l'
alias la='ls -a'
alias history='history 1'
alias python=python3
alias clang++='clang++ --std=c++17'

export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/Users/anshulkanwar/go/bin:$PATH"

# bun completions
[ -s "/Users/anshulkanwar/.bun/_bun" ] && source "/Users/anshulkanwar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"
