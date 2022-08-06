# Write a function that accepts an array of 10 integers (between 0 and 9), 
# that returns a string of those numbers in the form of a phone number.

def create_phone_number(numbers)
  string = ""
  string.concat("(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}")
end

# should return "(123) 456-7890"
create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])