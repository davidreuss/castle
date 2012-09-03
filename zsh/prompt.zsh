precmd() {
    vcs_info
}

PROMPT='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%}${vcs_info_msg_0_} '

bindkey -v
