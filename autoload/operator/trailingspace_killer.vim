function! operator#trailingspace_killer#do(_)
    if s:is_empty_region(getpos("'["), getpos("']"))
        return
    endif
    silent '[,']substitute/\s\+$//e
    if exists('g:operator#trailingspace_killer#preserved_pos')
        call setpos('.', g:operator#trailingspace_killer#preserved_pos)
    endif
endfunction

function! s:is_empty_region(begin, end)
    return a:begin[1] > a:end[1] || (a:begin[1] == a:end[1] && a:end[2] <= a:begin[2])
endfunction
