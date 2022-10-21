var uniqueInOrder=function(iterable){
  let array;
  
  if (typeof iterable === 'string') {
    array = iterable.split("");
  } else {
    array = iterable;
  }
  
  let newArray = [];
  let value = array[0];
  
  if (array.length === 0) {
    return [];
  } else {
      newArray.push(value);
  
    array.forEach(char => {
      if (char !== value) {
        value = char;
        newArray.push(value);
      }
    })
  
    return newArray;
  }

}