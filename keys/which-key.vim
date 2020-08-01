" Disable NERDCommenter maps
let g:NERDCreateDefaultMappings = 0

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→'
set timeoutlen=500

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = ['<Plug>NERDCommenterToggle'             , 'comment']
let g:which_key_map['e'] = [':CocCommand explorer'                  , 'explorer']
let g:which_key_map['f'] = [':CocCommand explorer --preset floating', 'floating explorer']
let g:which_key_map['h'] = [':Startify'                             , 'home screen']
let g:which_key_map['z'] = ['Goyo'                                  , 'zen']
let g:which_key_map['w'] = [':wa'                                   , 'save all']
let g:which_key_map['q'] = [':Bdelete'                              , 'close buf']
let g:which_key_map['s'] = {
  \ 'name' : '+search',
  \ 'f'    : [':Files', 'files'],
  \ 't'    : [':Rg'   , 'text'],
  \ 'z'    : [':FZF'  , 'FZF'],
  \ }
let g:which_key_map['v'] = {
  \ 'name' : '+vim',
  \ 's'    : [':source $MYVIMRC', 'source vim'],
  \ 'i'    : [':PlugInstall', 'plug install']
  \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
