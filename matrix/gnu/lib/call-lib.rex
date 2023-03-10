/*
The call instruction names the internal routine to invoke and passes the variable number_in to that
routine as its input. The subroutine uses the arg instruction to read this parameter (exactly as the main
routine did). Here is the encoding of the call instruction. The first parameter names the subroutine or
function to run, while each subsequent parameter is an input argument sent to the subroutine. In this
case, the call instruction passes a single argument named number_in to the subroutine named
square_the_number:*/
arg number_in
call digits 
say 'call number_in:' number_in
