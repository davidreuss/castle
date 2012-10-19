# Add ~/.zsh/functions to $fpath 
fpath=($fpath $HOME/.zsh/completions)

# Load modules
autoload -U colors && colors
autoload -U zmv

source $HOME/.zsh/antigen.zsh
source $HOME/.zsh/vcs.zsh
source $HOME/.zsh/completion.zsh
source $HOME/.zsh/terminal.zsh
source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/history.zsh
source $HOME/.zsh/bundles.zsh

# We like vim
export EDITOR="vim"

# Last but not least load a .zshlocal if exists for local overrides
[[ -f $HOME/.zshlocal ]] && source $HOME/.zshlocal
