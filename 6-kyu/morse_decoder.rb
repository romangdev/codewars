# In this kata you have to write a simple Morse code decoder. 
# While the Morse code is now mostly superseded by voice and digital data

def decodeMorse(morseCode)
  # credit to user 'mikedamage' on Github for the premade morse dictionary
  morse_dict = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--..",
  " " => " ",
  "1" => ".----",
  "2" => "..---",
  "3" => "...--",
  "4" => "....-",
  "5" => ".....",
  "6" => "-....",
  "7" => "--...",
  "8" => "---..",
  "9" => "----.",
  "0" => "-----",
  "." => ".-.-.-",
  "?" => "..--..",
  "!" => "-.-.--",
  "," => "--..--",
}

deciphered_code = []
morse_code = morseCode.split("   ")

morse_code = morse_code.map do |code|
  code.split(" ")
end

morse_code.each do |code_block|
  code_block.each do |code|
    if code == "...---..."
      deciphered_code << "SOS"
    else
      morse_dict.each do |key, val|
        deciphered_code << key  if code == val
      end
    end
  end
  deciphered_code << " "
end

deciphered_code.join.upcase.strip
end

# Should return 'SOS'
decodeMorse("...---...")

# Should return 'HEY JUDE'
decodeMorse(".... . -.--   .--- ..- -.. .")