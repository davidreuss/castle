# Add ~/.zsh/functions to $fpath 
fpath=($fpath $HOME/.zsh/completions $HOME/.zsh/functions)

# /usr/local/bin for Homebrew stuff
export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH

# Useful aliases
alias json-decode="php -r 'print_r(json_decode(file_get_contents(\"php://stdin\")));'"
