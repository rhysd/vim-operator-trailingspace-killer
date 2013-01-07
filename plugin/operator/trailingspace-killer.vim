if exists('g:loaded_operator_trailingspace_killer')
    finish
endif

call operator#user#define_ex_command('trailingspace-killer', 's/\s\+$//e')

let g:loaded_operator_trailingspace_killer = 1
