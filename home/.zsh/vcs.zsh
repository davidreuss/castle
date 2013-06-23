autoload -U vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr "+" # uncommitted changes
zstyle ':vcs_info:*' stagedstr "+" # staged commits
zstyle ':vcs_info:*' formats " (%{$fg_bold[green]%}%b%{$reset_color%}%{$fg_bold[red]%}%u%{$reset_color%}%{$fg_bold[red]%}%c%{$reset_color%})"
