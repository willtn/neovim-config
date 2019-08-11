" indentLine 
let g:indentLine_setColors = 0

" vim-javascript 
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" editorconfig-vim 
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" gitgutter 
let g:conflict_marker_enable_mappings = 0
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '│'
let g:gitgutter_sign_removed_first_line = '│'
let g:gitgutter_sign_modified_removed = '│'

" vim-airline 
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" NERDTree
map <Leader>nt :NERDTreeToggle<CR>

" deoplete
" let g:deoplete#enable_at_startup = 1
