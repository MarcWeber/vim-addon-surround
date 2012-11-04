if !exists('g:vim_addon_surround') | let g:vim_addon_surround = {} | endif | let s:c = g:vim_addon_surround

let s:c.mappings = get(s:c, 'mappings', [
      \ {'mapping': '<m-">', 'pair': ['"', '"']},
      \ {'mapping': '<m-''>', 'pair': ['''', '''']},
      \ {'mapping': '<m-(>', 'pair': ['(', ')']},
      \ {'mapping': '<m-[>', 'pair': ['[', ']']}
      \ ] )

for m in s:c.mappings
  exec 'vnoremap '. m.mapping .' :call vim_addon_surround#SurroundText('.string(m.pair[0]).','.string(m.pair[1]).',"v")<CR>'
endfor
