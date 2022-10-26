// Your task is to write a function which returns the sum of 
// following series upto nth term(parameter).

// Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...

function SeriesSum(n)
{
  if (n === 0) {
    return n.toFixed(2)
  }
  
  let bottom = 1
  let array = []
  for (let i = 0; i < n; i++) {
    array.push(1/(bottom))
    bottom += 3
  }
  
  let sum = array.reduce((sum, number) => {
    return sum + number
  }, 0)
  
  return sum.toFixed(2)
}