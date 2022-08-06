# This time we want to write calculations using functions and get the results.

def calc(result, num)
  if result.nil? 
    num
  elsif result[1] == "+"
    num + result[0]
  elsif result[1] == "-"
    num - result[0]
  elsif result[1] == "*"
    num * result[0]
  elsif result[1] == "/"
    num / result[0]
  else
    puts "error"
  end
end
def num_op_return(number, operation)
    num_and_op = []
    num_and_op << number << operation
    num_and_op
end
def zero(result = nil)
  calc(result, 0)
end
def one(result = nil)
  calc(result, 1)
end
def two(result = nil)
  calc(result, 2)
end
def three(result = nil)
  calc(result, 3)
end
def four(result = nil)
  calc(result, 4)
end
def five(result = nil)
  calc(result, 5)
end
def six(result = nil)
  calc(result, 6)
end
def seven(result = nil)
  calc(result, 7)
end
def eight(result = nil)
  calc(result, 8)
end
def nine(result = nil)
  calc(result, 9)
end
def plus(number)
  num_op_return(number, "+")
end
def minus(number)
  num_op_return(number, "-")
end
def times(number)
  num_op_return(number, "*")
end
def divided_by(number)
  num_op_return(number, "/")
end

# should return 35
seven(times(five()))

# should return 2
six(divided_by(two()))