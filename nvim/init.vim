"Save current OS in g:os
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif


"if !exists('g:vscode')
" 	"Not in VSCode
"endif

if g:os == "Windows"
	let g:path = "$LOCALAPPDATA/nvim/"
elseif g:os == "Linux"
	"let g:path = "$HOME/.config/nvim/"
else
	echo "Unknown OS"
endif

execute "source " . expand(g:path) . "vim-plug/plugins.vim"
execute "source " . expand(g:path) . "general/settings.vim"
"execute "source " . expand(g:path) . "general/functions.vim"
execute "source " . expand(g:path) . "keys/mappings.vim"

if exists('g:vscode')
    "VSCode extensions
    execute "source " . expand(g:path) . "vscode/settings.vim"			|" Need to lookey lookey again.
    execute "source " . expand(g:path) . "plug-config/easymotion.vim"	|"still need todo
    execute "source " . expand(g:path) . "plug-config/highlightyank.vim"	|"look into: https://neovim.io/doc/user/lua.html#lua-highlight
else
"    "Plugins for non-VSCode nvim
"
"    "Themes
"    source $HOME/.config/nvim/themes/syntax.vim
"    "source $HOME/.config/nvim/themes/nvcode.vim
"    source $HOME/.config/nvim/themes/airline.vim
"    source $HOME/.config/nvim/themes/material.vim
"
"    "Plugin Config
"    source $HOME/.config/nvim/keys/which-key.vim
"    source $HOME/.config/nvim/plug-config/vim-commentary.vim
"    "source $HOME/.config/nvim/plug-config/rainbow.vim
"    source $HOME/.config/nvim/plug-config/rnvimr.vim
"    source $HOME/.config/nvim/plug-config/better-whitespace.vim
"    source $HOME/.config/nvim/plug-config/fzf.vim
"    source $HOME/.config/nvim/plug-config/sneak.vim
"    source $HOME/.config/nvim/plug-config/codi.vim
"    source $HOME/.config/nvim/plug-config/vim-wiki.vim
"    source $HOME/.config/nvim/plug-config/coc.vim
"    source $HOME/.config/nvim/plug-config/goyo.vim
"    source $HOME/.config/nvim/plug-config/vim-rooter.vim
"    source $HOME/.config/nvim/plug-config/start-screen.vim
"    source $HOME/.config/nvim/plug-config/gitgutter.vim
"    source $HOME/.config/nvim/plug-config/git-messenger.vim
"    source $HOME/.config/nvim/plug-config/closetags.vim
"    source $HOME/.config/nvim/plug-config/floaterm.vim
"    "source $HOME/.config/nvim/plug-config/vista.vim
"    source $HOME/.config/nvim/plug-config/xtabline.vim
"    source $HOME/.config/nvim/plug-config/far.vim
"    source $HOME/.config/nvim/plug-config/tagalong.vim
"    " source $HOME/.config/nvim/plug-config/illuminate.vim
"    source $HOME/.config/nvim/plug-config/bracey.vim
"    source $HOME/.config/nvim/plug-config/asynctask.vim
"    source $HOME/.config/nvim/plug-config/window-swap.vim
"    source $HOME/.config/nvim/plug-config/markdown-preview.vim
"    luafile $HOME/.config/nvim/lua/plug-colorizer.lua
"    "source $HOME/.config/nvim/plug-config/vimspector.vim " Uncomment if you want to use Vimspector
endif

"" Add paths to node and python here
"" Probably wont need this...
"if !empty(glob("~/.config/nvim/paths.vim"))
"  execute "source " . source expand(g:path) . paths.vim
"endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
