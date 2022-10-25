// You are given an array (which will have a length of at least 3, but could be very large) containing integers. 
// The array is either entirely comprised of odd integers or entirely comprised of even integers except 
// for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

function findOutlier(integers){
  const evenArray = integers.filter(x => x % 2 === 0)
  const oddArray = integers.filter(x => x % 2 !== 0)
  
  return evenArray.length > oddArray.length ? oddArray[0] : evenArray[0]
}