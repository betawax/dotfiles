#
# Zsh
#

# Set the system locale
export LANG=en_US.UTF-8

#
# $PATH
#

# Ensure unique values
typeset -U PATH path

# Add directories to $PATH
path=(/usr/local/bin $path)
path=(/usr/local/sbin $path)
path=(/opt/homebrew/bin $path)
path=(/opt/homebrew/sbin $path)

#
# Autocompletion
#

# Enable autocompletion
autoload -Uz compinit
compinit

# Use menu selection to cycle through matches
zstyle ':completion:*' menu select

# Use case-insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Use Fish-like autosuggestions and syntax highlighting
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# History Search
#

# Use Fish-like history search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Bind [Up] and [Down] arrow keys to cycle through matches
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

#
# Prompt
#

# Define the command line prompt
PROMPT=$'\n'" %F{004}%~%f"$'\n'" %F{001}❯%f "

#
# Aliases
#

# Prefer some GNU utilities
alias grep='ggrep --color'
alias ls='gls --color --group-directories-first --human-readable'
alias sed='gsed'

# Define command aliases
alias code='code --new-window'

# Define command abbreviations
alias brup='brew update && brew upgrade && brew cleanup'
alias resetlp='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'

#
# Node Version Manager
#

export NVM_DIR="$HOME/.nvm"

[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
