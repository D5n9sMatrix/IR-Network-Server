/*
If the value in the variable gender equals the character M, the first logic branch executes. If the value is F,
the group of instructions associated with the second when clause runs. If neither case is true, then the
instructions following the otherwise keyword execute.
Notice that an instruction_list follows the otherwise keyword, so if you code more than one state-
ment here you do not need to insert them in a do-end pair. Contrast this to the when groups, which do
require a do-end pair if they contain more than a single instruction. Don’t forget to encode the final end
keyword to terminate the select statement.
*/

/*
CALL Statements
All programming languages provide a mechanism to invoke other scripts or routines. This allows one
script, referred to as the caller, to run another, the subroutine. Rexx’s call instruction invokes a subrou-
tine, where the subroutine may be one of three kinds:
❑Internal — Consists of Rexx code residing in the same file as the caller.
❑Built-in — One of the Rexx built-in functions.
❑External — Code residing in a different file than the invoking script. An external subroutine may
be another Rexx script, or it may be written in any language supporting Rexx’s interface.
The subroutine may optionally return one value to the caller through the Rexx special variable named
result. (Rexx has only a handful of special variables and result is one of them). Of course, you can
have the subroutine send back one or more results by changing the values of variables it has access to.
We’ll explore all the ways in which caller and subroutines or functions can communicate in detail in
Chapter 8, which is on subroutines and modularity. For now, we’ll just focus our discussion on the call
instruction.
Subroutines and functions are very similar in Rexx. The one difference is that a function must return a
value to the caller by its return instruction, where a subroutine may elect do so.
The following sample program illustrates the call instruction by invoking an internal routine as a sub-
routine. The subroutine is considered internal because its code resides in the same file as that of the pro-
gram that calls it. The program subroutine squares a number and returns the result.
The main program reads one input number as a command-line argument or input parameter. To run the pro-
gram and get the square of four, for example, you enter this line to specify the command-line argument:
*/

/*
SQUARE:
Squares a number by calling an internal subroutine*/
arg number_in .
/* retrieve the command-line argument
*/
call square_the_number number_in
say "You entered:" number_in "Squared it is:" result
exit 0
/*
SQUARE_THE_NUMBER:
Squares the number and RETURNs it into RESULT
*/
square_the_number: procedure
arg the_number
return the_number
