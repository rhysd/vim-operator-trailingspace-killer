function! operator#trailingspace_killer#do(_)
    if s:is_empty_region(getpos("'["), getpos("']"))
        echoerr 'empty region!'
        return
    endif
    let search_save = @/
    silent '[,']substitute/\s\+$//e
    let @/ = search_save
    silent! call setpos('.', g:operator#trailingspace_killer#preserved_pos)
endfunction

function! s:is_empty_region(begin, end)
    return a:begin[1] > a:end[1] || (a:begin[1] == a:end[1] && a:end[2] <= a:begin[2])
endfunction
