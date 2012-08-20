# Add ~/.zsh/functions to $fpath 
fpath=($fpath $HOME/.zsh/completions $HOME/.zsh/functions)

# Load modules
autoload -U colors && colors
autoload -U zmv

source zsh/vcs.zsh
source zsh/completion.zsh
source zsh/terminal.zsh
source zsh/prompt.zsh
source zsh/terminal.zsh

# We like vim
export EDITOR="vim"

# Last but not least load a .zshlocal if exists for local overrides
[[ -f ~/.zshlocal ]] && source  ~/.zshlocal
