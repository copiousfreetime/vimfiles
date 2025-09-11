" Removed as redudnant for now
" Tell vim that it has 256 colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
