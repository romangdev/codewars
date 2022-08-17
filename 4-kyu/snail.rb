# Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

# array = [[1,2,3],
#          [4,5,6],
#          [7,8,9]]
# snail(array) #=> [1,2,3,6,9,8,7,4,5]

# For better understanding, please follow the numbers of the next array consecutively:

# array = [[1,2,3],
#          [8,9,4],
#          [7,6,5]]
# snail(array) #=> [1,2,3,4,5,6,7,8,9]

# NOTE: The idea is not sort the elements from the lowest value to the highest; the idea is to traverse the 2-d array in a 
# clockwise snailshell pattern.

# NOTE 2: The 0x0 (empty matrix) is represented as en empty array inside an array [[]].

def snail(array)
  return [] if array == [[]]

  finish_check = []
  snail_arr = []
  n = 0
  x = 0

  until finish_check.length == 4
    finish_check = []

    if array[x][n].nil? || array[x][n] == ""
      finish_check << true
    else
      until array[x][n] == nil || array[x][n] == ""
        snail_arr << array[x][n]
        array[x][n] = ""
        n += 1
      end
    end

    n -= 1
    x += 1

    if array[x].nil? || array[x][n] == ""
      finish_check << true
    else
      until array[x].nil? || array[x][n] == ""
        snail_arr << array[x][n]
        array[x][n] = ""
        x += 1
      end
    end

    x -= 1
    n -= 1

    if array[x][n].nil? || array[x][n] == ""
      finish_check << true
    else
      until array[x][n] == nil || array[x][n] == ""
        snail_arr << array[x][n]
        array[x][n] = ""
        n -= 1
      end
    end

    n += 1
    x -= 1

    if array[x].nil? || array[x][n] == ""
      finish_check << true
    else
      until array[x] == nil || array[x][n] == ""
        snail_arr << array[x][n]
        array[x][n] = ""
        x -= 1
      end
    end

    x += 1
    n += 1
  end

  snail_arr
end

# should be [1, 2, 3, 6, 9, 8, 7, 4, 5]
snail([[1,2,3],[4,5,6],[7,8,9]])