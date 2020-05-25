if has("unix")
	set runtimepath+=$HOME/dotfiles/vim/autoload/plug.vim
	let plug_inst_path = "$HOME/.config/nvim/plugins"
elseif has("win64")
	set runtimepath+=$HOME/AppData/Local/nvim/autoload/plug.vim
	let plug_inst_path = "$HOME/AppData/Local/nvim/plugins"
endif

call plug#begin(plug_2_inst)
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

runtime! ./conf/nvim_options.vim
runtime! ./conf/lightline_options.vim
