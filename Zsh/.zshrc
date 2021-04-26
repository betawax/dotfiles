# Oh My Zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="betawax"
plugins=(docker docker-compose)
source $ZSH/oh-my-zsh.sh

# PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:$HOME/.composer/vendor/bin:$PATH

# Aliases
alias artisan="php artisan"
alias dump="composer dump-autoload"
alias git="LANG=en_US.UTF-8 git"
alias ls="gls -h --color --group-directories-first"
alias sed="gsed"
alias subl="subl --new-window"

# Shortcuts
alias blackbox="cd /Volumes/BLACKBOX; rm -rf .Spotlight-V100 .fseventsd; find . -name '.DS_Store' -exec rm -f {} \;; ls -la; cd; diskutil unmountDisk /Volumes/BLACKBOX"
alias brup="brew update && brew upgrade && brew cleanup"
alias gopro="find ~/Documents/GoPro -iname '*.mp4' | wc -l | awk '{print \$1}'"
alias opentx="cd /Volumes/NO\ NAME; rm -rf .Spotlight-V100 .Trashes .fseventsd ._.Trashes; find . -name '._*' -exec rm -f {} \;; find . -name '.DS_Store' -exec rm -f {} \;; ls -la; cd; diskutil unmountDisk /Volumes/NO\ NAME; diskutil unmountDisk /Volumes/TARANIS"
alias resetlp="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

# Access Tokens
if [ -f ~/.dotfiles/access_tokens ]; then
  source ~/.dotfiles/access_tokens
fi
