require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

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

  def 


end
