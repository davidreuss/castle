# Load modules
autoload -U colors && colors
autoload -Uz compinit && compinit

# Make autocompletion be case insensitive
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'

# zsh options
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
setopt AUTO_MENU

unsetopt MENU_COMPLETE

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

setopt appendhistory hist_ignore_all_dups hist_ignore_space

# Prompt layout
PROMPT="%{$fg[cyan]%}%m%b %{$reset_color%}%~ $ "
RPROMPT=""

# Export options.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Include path

# We like vim
export EDITOR="vim"

# We like mvim even more if we are on osx (Darwin)
case `uname -s` in 
    'Darwin')
        # MacVim
        export EDITOR="mvim -f"

        # /usr/local/bin for Homebrew stuff
        export PATH=/usr/local/sbin:/usr/local/bin:$PATH
esac

# Add ~/.zsh/functions to $fpath and autoload the found functions.
if [ -d $HOME"/.zsh/functions" ]; then
   #fpath="$fpath $HOME/.zsh/functions" 
fi

# Last but not least load a .zshlocal if exists for local overrides
if [ -f "$HOME/.zshlocal" ]; then
    source "$HOME/.zshlocal"
fi
