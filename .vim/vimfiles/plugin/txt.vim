"text file high light

syntax on
autocmd BufNewFile,BufRead *.txt call SetSyntax_Txt()
function! SetSyntax_Txt()
  syntax match txt_tag "<[^>]*>"
  syntax match txt_tag "([^)]*)"
  syntax match txt_cmt "^#.*"
  syntax match txt_cont "\[[^\]]*\]"
  highlight link txt_tag Constant
  highlight link txt_cmt Comment
  highlight link txt_cont Statement
endfunction

