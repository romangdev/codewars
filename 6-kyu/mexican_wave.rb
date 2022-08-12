# In this simple Kata your task is to create a function that turns a string 
# into a Mexican Wave. You will be passed a string and you must return that 
# string in an array where an uppercase letter is a person standing up. 

# 1.  The input string will always be lower case but maybe empty.

# 2.  If the character in the string is whitespace then pass over it as if 
#     it was an empty seat

def wave(str)
  result = []
  return result if str.empty?

  str = str.split("")
  for i in 0...str.length
    unless str[i] == " "
      str[i] = str[i].upcase
      result << str.join("")
      str[i] = str[i].downcase
    end
  end
  result
end

# should return "["Hello", "hEllo", "heLlo", "helLo", "hellO"]"
wave("hello")

# should return "[" Gap ", " gAp ", " gaP "]"
wave(" gap ")