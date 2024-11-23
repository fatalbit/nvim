require("config.lazy")

vim.cmd([[
  syntax on
  
  set linebreak
  set showbreak=..
  set textwidth=120
  
  set nu
  set t_Co=256
  
  filetype plugin indent on
  
  set laststatus=2
  
  set tabstop=2
  set shiftwidth=2
  set expandtab
  
  set softtabstop=2
  set showmatch
  
  set hlsearch
  set incsearch
  set ignorecase
  
  let g:indent_guides_start_level = 2
  let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim']
]])

