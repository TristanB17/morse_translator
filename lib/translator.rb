# require_relative 'input.txt'


class Translator

  def initialize
    @dictionary = {"a" => ".-",
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
                    " " => " "}
    @english = invert
  end

  def eng_to_morse(message)
    translated = message.downcase.chars.map do |letter|
      letter = @dictionary[letter]
    end
    translated.join
  end

  def from_file(file)
    message = File.read(file)
    eng_to_morse(message)
  end

  def invert
    @dictionary.invert
  end

  def morse_to_eng(code)
    letters = code.split(" ")
    translated = letters.map do |letter|
      if letter == ""
        letter = " "
      else
        letter = @english[letter]
      end 
    end
    translated.join
  end

end
