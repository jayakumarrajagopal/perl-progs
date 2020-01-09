Solution to this problem :
  Given a string with brackets/braces, check if they match and close and print message accordingly.

Inputs: 

  " [) " --> NOT valid as both brackets do not match (both do not have corresponding closing ] and opening ( char.

  "if ( a == 5 ) {  b [0] = 10; } "  --> this is valid.

  " ( { anything } ) { < {} > } "   --> this is valid.

  " (( [] <> ))"   --> this is valid.

  ")( {} "   --> this is NOT valid as closing paranthesis appears before opening in first char.

  "{[{}}"   --> this is NOT valid as closing square brakcet is absent.
