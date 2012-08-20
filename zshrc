# Add ~/.zsh/functions to $fpath 
fpath=($fpath $HOME/.zsh/completions $HOME/.zsh/functions)

# Load modules
autoload -U colors && colors
autoload -U compinit && compinit
autoload -U vcs_info
autoload -U zmv

# VCS
zstyle ':vcs_info:*' enable git cvs
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr "+" # uncommitted changes
zstyle ':vcs_info:*' formats " (%{$fg_bold[green]%}%b%{$reset_color%}%{$fg_bold[red]%}%u%{$reset_color%})"

# Make autocompletion be case insensitive
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

precmd() {
    vcs_info
}

# History
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
REPORTTIME=10

PROMPT='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}${vcs_info_msg_0_} '

# We like vim
export EDITOR="vim"
bindkey -v

# Colors dude, they are awesome!
export CLICOLOR=xterm-256color

# Last but not least load a .zshlocal if exists for local overrides
[[ -f ~/.zshlocal ]] && source  ~/.zshlocal
