#You need to return a string that looks like a diamond shape when printed on 
# the screen, using asterisk (*) characters. Trailing spaces should be removed, 
# and every line must be terminated with a newline character (\n).

# Return null/nil/None/... if the input is an even number or negative, as it is 
# not possible to print a diamond of even or negative size.

def diamond(n)
  return nil if n.even? || n < 1

  diamond_full = []
  diamond_line = []
  line_spaces = -1
  for i in 1..n
    next if i.even?
    line_spaces += 1
  end

  for i in 1..n 
    next if i.even?

    unless line_spaces.zero?
      for s in 1..line_spaces 
        diamond_line << " "
      end
    end

    line_spaces -= 1

    for a in 1..i
      diamond_line << "*"
    end

    diamond_line << "\n"
    diamond_full << diamond_line
    diamond_line = []
  end

  diamond_full_reverse = diamond_full.reverse
  diamond_full_reverse.delete_at(0)
  diamond_full << diamond_full_reverse
  diamond_full.join("")
end

# should print a perfectly symmetrical diamond with a mid line of 15 asterisks
print diamond(15)
