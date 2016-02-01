" user filetype file
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

au! BufNewFile,BufRead *.gnu setf gnuplot
au! BufNewFile,BufRead *.fs setf fs
au! BufNewFile,BufRead *.ps1 setf ps1

augroup END
