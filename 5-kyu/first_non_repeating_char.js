// Write a function named first_non_repeating_letter that takes a string input, and returns the first character that is not repeated anywhere in the string.
// For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.
// As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter.
// For example, the input 'sTreSS' should return 'T'.
// If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.

function firstNonRepeatingLetter(s) {
  if (s.length === 1) {return s} 
  else if (s.length === 0) {return ''}
  
  const stringArr = s.split("")
  const usedLetters = []
  
  for (let i = 0; i < stringArr.length; i++) {
    if (i === stringArr.length - 1 && !usedLetters.includes(stringArr[i])) {return stringArr[i]}
    else if (i === stringArr.length - 1) {return ''}

    if (usedLetters.includes(stringArr[i])) {continue}
  
    for (let n = i + 1; n < stringArr.length; n++) {
      if (stringArr[i].toLowerCase() === stringArr[n].toLowerCase()) {
        usedLetters.push(stringArr[i])
        break
      }
      if (n === stringArr.length - 1) {return stringArr[i]}
    }
    
    if (i === stringArr.length - 1 && !usedLetters.includes(stringArr[i])) {return stringArr[i]}
    else if (i === stringArr.length - 1) {return ''}
  }
}