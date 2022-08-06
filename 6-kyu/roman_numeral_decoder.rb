# Create a function that takes a Roman numeral as its argument and returns its 
# value as a numeric decimal integer. You don't need to validate the form of 
# the Roman numeral.

def solution(roman)
  # complete the solution by transforming the 
  # string roman numeral into an integer
    numerals = {
    "I" => 1,
    "V" => 5, 
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  number_arr = []
  roman = roman.split("")
  
  for i in 0..(roman.length - 1)
    numerals.each do |key, value|
      if (roman[i] == "X" || roman[i] == "V") && roman[i - 1] == "I" && i != 0
        next
      else
        if roman[i] == key && key == "I" && roman[i + 1] == "X"
          number_arr << 9 
        elsif roman[i] == key && key == "I" && roman[i + 1] == "V"
          number_arr << 4 
        elsif roman[i] == key 
          number_arr << value 
        else 
          next 
        end
      end
    end
  end

  result = number_arr.sum
end

# should return 1666
solution('MDCLXVI')