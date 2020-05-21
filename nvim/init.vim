if has("unix")
	let plug_2_inst = "~/.config/nvim/plugins";
elseif has("win64")
	let plug_2_inst = "~/AppData/Local/nvim/plugins"
endif

call plug#begin(plug_2_inst)
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

runtime! nvim_options.vim
runtime! lightline_options.vim
