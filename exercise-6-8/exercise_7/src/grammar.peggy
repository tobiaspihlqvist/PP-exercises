//Implement a parse for the grammar in the previous exercise using a PEG parser generator in the language of your choice.
//The output should be an integer containting the number of minutes past midnight.

// 4pm, 7:38pm, 23:42, 3:16, 3:16am

start
  = meridiemFormats
/TwentyFourHourFormat

TwentyFourHourFormat
    = hour: hour ":" minutes:minutes { return (hour + minutes)}

meridiemFormats
    = hour:hour ":" minutes:minutes meridiem:meridiem {return (hour + minutes + meridiem)}
    / hour:hour meridiem:meridiem {return (hour + meridiem)}
    
meridiem "am or pm"
    = 'am' {
        return 0}
    / 'pm' { 
        return 12*60}

hour "the two different hour schemas"
= hour: twoDigitHour {return (hour * 60)}
/ hour: digit {return (hour * 60)}

twoDigitHour
    = leading: [01] trailing: digit {return parseInt (leading + trailing)}
    / leading: [2] trailing: [0-3] {return parseInt (leading + trailing)}

minutes "minutes" = 
leadingMinute: [0-5] trailingMinute: [0-9] {
    return parseInt(leadingMinute + trailingMinute)}


digit "digit"
  = digit:[0-9] { return parseInt(digit)}