require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'
# require './lib/input.txt'
require 'pry'

class TranslatorTest < Minitest::Test

  def setup
    @translator = Translator.new
  end

  def test_it_exists
    assert_instance_of Translator, @translator
  end

  def test_lower_case_letter_translation
    expected =  "......-...-..--- .-----.-..-..-.."
    assert_equal expected, @translator.eng_to_morse("hello world")
  end

  def test_upper_case_letter_translation
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, @translator.eng_to_morse("Hello World")
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, @translator.eng_to_morse("There are 3 ships")
  end

  def test_it_creates_and_translates_a_file
    expected = ".. .--- ..-. .- ..-....-..."
    file = File.open("input.txt", "w")
    file.write("I am in a file")
    file.close
    assert_equal expected, @translator.from_file(file)
  end

  def test_it_translates_existing_files
    expected = ".. .--- ..-. .- ..-....-..."
    file = "./input_2.txt"
    assert_equal expected, @translator.from_file(file)
  end

  def test_it_can_translate_morse_to_english
    expected = @translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
    assert_equal "hello world", expected
  end


end
