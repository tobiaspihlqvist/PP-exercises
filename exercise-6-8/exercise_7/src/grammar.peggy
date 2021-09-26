//Implement a parse for the grammar in the previous exercise using a PEG parser generator in the language of your choice.
//The output should be an integer containting the number of minutes past midnight.

// 4pm, 7:38pm, 23:42, 3:16, 3:16am

start
  = TwentyFourHourFormat / meridiemFormats / meridiemFormatWithMeridiem / meridiem

TwentyFourHourFormat
    = hour: hour ":" minutes:minutes { return (hour + minutes)}

meridiemFormatWithMeridiem
    = hour:hour ":" minutes:minutes "" meridiem:meridiem {return (hour + minutes + meridiem)}
meridiemFormats
    = hour:hour meridiem:meridiem {return (hour + meridiem)}
    
meridiem "am or pm"
    = "am"i {
        console.log("jag är am")
        return 0}
    / "pm"i { 
        console.log("jag är pm")
        return 12*60}

hour "the two different hour schemas"
= hour: twoDigitHour {return (hour * 60)}
/ hour: digit {return (parseInt(hour * 60))}

twoDigitHour
    = leading: [01] trailing: digit {return parseInt (leading + trailing)}
    / leading: [2] trailing: [0-3] {return parseInt (leading + trailing)}

minutes "minutes" = 
leadingMinute: [0-5] trailingMinute: [0-9] {
    return parseInt(leadingMinute + trailingMinute)}


digit "digit"
  = digit:[0-9] { return parseInt(digit); }

// <first> ::= <meridiemHour><meridiem>;;
// <second> ::= <meridiemhour><separator><minutes><meridiem>;
// <third> ::= <hourFormat1><separator><minutes>;
// <fourth> ::= <meridiemHour><separator><minutes>;
// <fifth> ::= <fourth><meridiem>

// <hourFormat1> ::= <1><digit> |<digit> | <2><1-3>;

// terminals
// <meridiem> ::= "am" | "pm";
// <meridiemHour> ::= [1-12];
// <minutes> ::= [0-59];
// <separator> ::= ":" ;
// <digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9