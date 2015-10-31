# spectrum_ls
PROMPT='$FG[208]%~ 🚀 %{$reset_color%} '
#PROMPT="%{$fg_no_bold[white]%}%n@%m: %~ %{$reset_color%}$ "

export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

if [ -x /usr/local/bin/gdircolors ]; then
    test -r ~/.dircolors && eval "$(gdircolors -b ~/.dircolors)" || eval "$(gdircolors -b)"
fi

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#printf "\033c"
