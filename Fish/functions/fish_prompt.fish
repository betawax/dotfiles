function fish_prompt

  set -g fish_prompt_pwd_dir_length 0
  set -g betawax_prompt_symbol '❯'
  set -g betawax_prompt_color red

  echo

  set_color $fish_color_cwd
  echo '' (prompt_pwd)
  set_color normal

  set_color $betawax_prompt_color
  echo -n " $betawax_prompt_symbol "
  set_color normal

end
