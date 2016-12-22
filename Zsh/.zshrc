# Zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="betawax"
source $ZSH/oh-my-zsh.sh

# Aliases
alias artisan="php artisan"
alias dump="composer dump-autoload"
alias ls="gls -h --color --group-directories-first"
alias sed="gsed"
alias subl="subl --new-window"

# Shortcuts
alias brup="brew update && brew upgrade && brew cleanup"
alias gopro="find ~/Documents/GoPro -iname '*.mp4' | wc -l | awk '{print \$1}'"
alias openlog="rm -rf /Volumes/NO\ NAME/.*; ls -la /Volumes/NO\ NAME/; diskutil unmountDisk /dev/disk3"
alias opentx="cd /Volumes/NO\ NAME; rm -rf .Spotlight-V100 .Trashes .fseventsd ._.Trashes; find . -name '._*' -exec rm -f {} \;; ls -la; cd; diskutil unmountDisk /Volumes/NO\ NAME; diskutil unmountDisk /Volumes/TARANIS"
alias resetlp="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

# PATH
export PATH=/usr/local/bin:/usr/local/sbin:/sbin:~/.composer/vendor/bin:$PATH

# Access Tokens
if [ -f ~/.dotfiles/access_tokens ]; then
  source ~/.dotfiles/access_tokens
fi
