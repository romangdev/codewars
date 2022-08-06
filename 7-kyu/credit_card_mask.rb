# Your task is to write a function maskify, which changes all but 
# the last four characters of a credit card number into '#'.

def maskify(cc)
  cc = cc.split("")
  for i in 0..(cc.length - 5)
    cc[i] = "#"
  end
  cc.join("")
end

# should return '############5616'
maskify('4556364607935616')