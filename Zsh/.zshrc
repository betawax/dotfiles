# oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Zsh theme
ZSH_THEME="betawax"

# Aliases
alias artisan="php artisan"

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# PATH
export PATH=/usr/local/bin:$PATH

# PHP
export PATH=$(brew --prefix php54)/bin:$PATH
