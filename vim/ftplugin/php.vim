" PHP specific settings
setlocal formatoptions=croql

setlocal makeprg=php\ -l\ %
setlocal errorformat=%m\ in\ %f\ on\ line\ %l

" PHP syntax highlighting settings
let php_sql_query=1 " Highlight SQL syntax in strings
let php_htmlInStrings=1 " Highlight HTML in strings
let php_noShortTags=1 " Disable short PHP tags. (<? ?>)
let php_folding=1 " Enable folding for classes and functions

" Autocomplete function names etc is nice to have
setlocal dictionary-=$HOME/.vim/php/funclist.txt dictionary+=$HOME/.vim/php/funclist.txt
setlocal complete-=k complete+=k
