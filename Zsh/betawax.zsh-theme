PROMPT="%{$fg_no_bold[white]%}%n@%m: %~ %{$reset_color%}$ "
printf "\033c"

export LSCOLORS="exfxcxdxbxegedabagacad"

alias ls="gls -h --color --group-directories-first"
