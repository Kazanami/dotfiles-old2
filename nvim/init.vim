if has("unix")
	let plug_2_inst = "~/.config/nvim/plugins"
elseif has("win64")
	let plug_2_inst = "~/AppData/Local/nvim/plugins"
endif

call plug#begin(plug_2_inst)
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

runtime! ./conf/nvim_options.vim
runtime! ./conf/lightline_options.vim
