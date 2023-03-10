/**
SELECT Statements
The CASE construct tests a series of conditions and executes the set of instructions for the first condition
that is TRUE. Rexx implements the CASE construct through its select instruction. The select instruc-
tion tests expressions and executes the logic branch of the first one that evaluates to TRUE. Here is the
generic format of the select instruction:
*/

/* The Rexx select instruction provides more control than the same CASE construct in some other pro-
gramming languages because you can encode any expression in the when clause. Some languages only
permit testing the value of a specified variable.
Here’s a simple coding example using select:*/
select
when gender = "M" then
say "Gender is male"
when gender = "F" then do
say "Gender is female"
female_count = female_count + 1
end
otherwise
say "Error -- Gender is missing or invalid"
say "Please check input record"
end
/* this END pairs with the SELECT instruction itself */