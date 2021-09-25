"Design a BNF grammar to parse a time specification.
All of the following examples should be accepted:
4pm, 7:38pm, 23:42, 3:16, 3:16am"

<first> ::= <meridiemHour><meridiem>;;
<second> ::= <meridiemhour><separator><minutes><meridiem>;
<third> ::= <hourFormat1><separator><minutes>;
<fourth> ::= <meridiemHour><separator><minutes>;
<fifth> ::= <fourth><meridiem>

<hourFormat1> ::= <1><digit> |<digit> | <2><1-3>;

terminals
<meridiem> ::= "am" | "pm";
<meridiemHour> ::= [1-12];
<minutes> ::= [0-59];
<separator> ::= ":" ;
<digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
