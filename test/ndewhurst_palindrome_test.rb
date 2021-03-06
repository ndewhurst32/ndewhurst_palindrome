require "test_helper"

class NdewhurstPalindromeTest < Minitest::Test

  def test_for_non_palindrome
    refute "apple".palindrome?
  end

  def test_for_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_processed_content
    assert_equal "A man, a plan, a canal".send(:processed_content),
                 "amanaplanacanal"
  end

end
