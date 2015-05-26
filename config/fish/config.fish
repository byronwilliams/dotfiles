set -x PATH $PATH $HOME/bin
set -x LANG en_GB.UTF-8
set -x LC_CTYPE en_GB.UTF-8
set -x _JAVA_ANT_WM_NONREPARENTING 1
set -x EDITOR nano
set -x CHROME_BIN /usr/bin/chromium

set -gx HOSTNAME (hostname)

set -g VIRTUALFISH_COMPAT_ALIASES
. ~/.config/fish/virtual.fish
. ~/.config/fish/auto_activation.fish

set fish_git_dirty_color red
set fish_git_not_dirty_color green

function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color $fish_git_dirty_color)$branch(set_color normal)
  else
    echo (set_color $fish_git_not_dirty_color)$branch(set_color normal)
  end
end

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

#function fish_prompt
#  if test -d .git
#    printf '[%s] %s@%s %s%s%s> ' (parse_git_branch) (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
#  else
#    printf '%s@%s %s%s%s> ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
#  end
#end

function fish_prompt
  # Virtualenv  # Display [venvname] if in a virtualenv
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end

  set last_status $status
  printf '%s@%s %s%s > ' (whoami) (hostname|cut -d . -f 1) (prompt_pwd) (__fish_git_prompt)
  set_color normal
end

# if status --is-interactive;
    #     keychain --nogui -Q ~/.ssh/id_rsa ~/.ssh/cloudfind ~/.ssh/cloudfind_srv ~/.ssh/cloudfind_old
    #     [ -e $HOME/.keychain/$HOSTNAME-fish ]; . $HOME/.keychain/$HOSTNAME-fish
# end
