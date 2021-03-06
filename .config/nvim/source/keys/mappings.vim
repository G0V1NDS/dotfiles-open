" g Leader key
	let mapleader=" "
	let maplocalleader=","

" Better indenting
	vnoremap < <gv
	vnoremap > >gv

" Better nav for omnicomplete
	inoremap <expr> <c-j> ("\<C-n>")
	inoremap <expr> <c-k> ("\<C-p>")

" Alternate way to save
	nnoremap <silent> <C-s> :w<CR>
" Alternate way to quit
	nnoremap <silent> <C-Q> :wq!<CR>
" Alternate way to escape
	nnoremap <silent> <C-c> <Esc>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
    xnoremap K :move '<-2<CR>gv-gv
    xnoremap J :move '>+1<CR>gv-gv

" Allow saving of files as sudo when I forgot to start vim using sudo.
    cmap w!! w !sudo tee > /dev/null %
