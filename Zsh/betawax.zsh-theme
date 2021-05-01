# PROMPT (see spectrum_ls command for colors)
PROMPT=$'\n'" %F{033}%~%f"$'\n'" %F{160}❯%f "
zle_highlight=( default:fg=255 )

# Use dircolors to set up LS_COLORS
if [ -x /usr/local/bin/gdircolors ]; then
  test -r ~/.dircolors && eval "$(gdircolors -b ~/.dircolors)" || eval "$(gdircolors -b)"
fi

# Use LS_COLORS for Zsh completions
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
