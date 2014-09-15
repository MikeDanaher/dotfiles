" Airline status bar options

let g:airline_powerline_fonts = 1
let g:airline_section_a       = airline#section#create(['mode'])
let g:airline_section_b       = airline#section#create_left(['(%{fugitive#head()})'])
let g:airline_section_c       = airline#section#create(['%f%M'])
let g:airline_section_x       = airline#section#create(['%P'])
let g:airline_section_y       = airline#section#create(['%B'])
let g:airline_section_z       = airline#section#create_right(['Line: %l','Col: %c'])

