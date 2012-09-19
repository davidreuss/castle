function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] =~ '\s'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
