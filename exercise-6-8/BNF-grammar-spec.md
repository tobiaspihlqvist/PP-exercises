"Design a BNF grammar to parse a time specification.
All of the following excamples should be accepted:
4pm, 7:38pm, 23:42, 3:16, 3:16am"


<minutes> ::= 0-59;

terminals

<meridiem> ::= "am" | "pm";
<number> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
<separator> ::= ":" ;
