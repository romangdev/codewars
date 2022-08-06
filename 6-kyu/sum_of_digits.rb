# Given n, take the sum of the digits of n. If that value has 
# more than one digit, continue reducing in this way until a 
# single-digit number is produced. The input will be a 
# non-negative integer.

def digital_root(n)
  if n == 0
    return n
  else
    n = n.to_s
    total = 0
    until total.to_s.length == 1 && total > 0
      for i in 0..(n.to_s.length - 1)
        total += n[i].to_i
      end
      n = total
      n = n.to_s
      p total
      if total.to_s.length > 1
        total = 0
      end
    end 
  total
  end
end

# should return 6
digital_root(132189)