skip_global_compinit=1

# zsh options
setopt noglobalrcs
setopt complete_in_word prompt_subst always_to_end correct_all
setopt appendhistory hist_ignore_all_dups hist_ignore_space
setopt ignore_eof local_options local_traps
setopt auto_pushd pushd_ignore_dups pushdminus

# zsh unset
unsetopt menu_complete 
