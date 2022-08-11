# The drawing shows 6 squares the sides of which have a length of 1, 1, 2, 3, 5, 8. 
# It's easy to see that the sum of the perimeters of these squares is :
# 4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80 

def perimeter(n)
  perimeters = []

  for i in 0..n
    if i <= 1
      perimeters << 1
    else
      perimeters << perimeters[i - 1] + perimeters[i - 2]
    end
  end

  4 * perimeters.sum
end

# should return 216
perimeter(7)

# should return 6002082144827584333104
perimeter(100)