RomanNumerals = {
    'I' => 1,
    'IV' => 4,
    'V' => 5,
    'IX' => 9,
    'X' => 10,
    'XL' => 40,
    'L' => 50,
    'XC' => 90,
    'C' => 100,
    'CD' => 400,
    'D' => 500,
    'CM' => 900,
    'M' => 1000
}

def fromRoman(romanNumber)
    unless romanNumber.match(/[[:upper:]]*[IVXLCDM]/)
        raise TypeError   
    end
   result = 0
   n1 = 0
   n2 = 0
   i = 0
   romanString = romanNumber.to_s
  while i < romanString.length
    n1 = RomanNumerals[romanString[i]]
    if i + 1 < romanString.length
        n2 = RomanNumerals[romanString[i+1]]
        if (n1 >= n2)
            result = result + n1
        else
            result = result + n2 - n1
             i = i+1
        end
    else 
        result = result + n1
       
    end
    i = i+1
end

return result

end


def toRoman(arabicNumber)
    if arabicNumber < 1 || arabicNumber > 3999
        raise RangeError
    end
    reversedHash = RomanNumerals.to_a.reverse
    result = ""
    i = 0
    while arabicNumber > 0
        if arabicNumber >= reversedHash[i][1]
            result = result + reversedHash[i][0]
            arabicNumber = arabicNumber - reversedHash[i][1]
        else
            i = i+1
        end
    end
return result
    
end




