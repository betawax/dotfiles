#
# $PATH
#

# Add directories to $PATH
path=('/usr/local/bin' $path)
path=('/usr/local/sbin' $path)
path=('/usr/local/opt/ruby/bin' $path)
path=("$HOME/.composer/vendor/bin" $path)

# Leave only unique values
typeset -TUx PATH path

#
# Oh My Zsh
#

if [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then

  # Initialize Oh My Zsh if present
  source ~/.oh-my-zsh/oh-my-zsh.sh

fi

#
# Aliases
#

alias ls='gls --color --group-directories-first --human-readable'

#
# PROMPT
#

# Configure the command line prompt
PROMPT=$'\n'" %F{004}%~%f"$'\n'" %F{001}❯%f "
