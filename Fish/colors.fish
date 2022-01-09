#
# Colors
#

# General
set -U fish_color_normal normal
set -U fish_color_error red
set -U fish_color_status red
set -U fish_color_cancel --reverse

# Filesystem
set -U fish_color_cwd blue
set -U fish_color_cwd_root blue
set -U fish_color_valid_path --underline

# User & Host
set -U fish_color_user brgreen
set -U fish_color_host bryellow
set -U fish_color_host_remote brred

# Interactive
set -U fish_color_autosuggestion brblack
set -U fish_color_search_match --reverse
set -U fish_color_selection --reverse
set -U fish_color_history_current --bold

# Syntax Highlighting
set -U fish_color_command blue
set -U fish_color_param brblue
set -U fish_color_quote white
set -U fish_color_keyword magenta
set -U fish_color_operator yellow
set -U fish_color_end yellow
set -U fish_color_comment brblack
set -U fish_color_redirection cyan
set -U fish_color_escape green

# Pager
set -U fish_pager_color_completion brblack
set -U fish_pager_color_description brblack
set -U fish_pager_color_prefix --bold --underline
set -U fish_pager_color_progress --background brblack
set -U fish_pager_color_selected_background --background brblack
