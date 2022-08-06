# Implement a function that adds two numbers together and returns their sum
# in binary. The conversion can be done before, or after the addition.

def add_binary(a,b)
  sum = a + b
  n = 1
  highest = 0
  binary_arr = []
  
  if sum == 0
    return "0"
  end
  
  until (highest > sum) do
    highest = 2 ** n
    n += 1
  end

  binary_arr.push("1")

  highest /= 2
  sum -= highest
  highest /= 2

  until highest < 1 do
    if highest <= sum
      binary_arr.push("1")
      sum -= highest
      highest /= 2
    elsif highest > sum
      binary_arr.push("0")
      highest /= 2
    end
  end
  binary_arr.join
end

add_binary(51,12)