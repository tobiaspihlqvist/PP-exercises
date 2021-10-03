"Design a BNF grammar to parse a time specification.
All of the following examples should be accepted:
4pm, 7:38pm, 23:42, 3:16, 3:16am"

<start> ::= <meridiemFormats> | <twentyFourHourFormat>

<twentyFourHourFormat> ::= <hour><minutes>
<meridiemFormats> ::= <hour><separator><minutes><meridiem> | <hour><meridiem>
<hour> ::= <twoDigitHour> | <digit>

terminals
<meridiem> ::= "am" | "pm";
<twoDigitHour> ::= [0-1]<digit> | [2][1-3]
<minutes> ::= [0-5][0-9];
<separator> ::= ":" ;
<digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
