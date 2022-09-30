function toCamelCase(str){
  let strArr = str.split("");
  let newArr = [];
  let prevChar = false;
  
  strArr.forEach((char) => {
    if (prevChar) {
      newArr.push(char.toUpperCase());
      prevChar = false;
    } else if (char !== "_" && char !== "-") {
      newArr.push(char);
    } else {
      prevChar = true;
    }
  });

  return newArr.join('');
}