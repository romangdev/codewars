# You will be given an array of numbers. You have to sort 
# the odd numbers in ascending order while leaving the even 
# numbers at their original positions.

def sort_array(source_array)
  odd_array = []
  
  for i in 0..source_array.length - 1
    if source_array[i].odd?
      odd_array << source_array[i]
      source_array[i] = "nil"
    end
  end

  odd_array = odd_array.sort
  n = 0
  
  for i in 0..source_array.length - 1
    if source_array[i] == "nil"
      source_array[i] = odd_array[n]
      n += 1
    end
  end
  
  source_array
end

# should return "[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]"
sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])