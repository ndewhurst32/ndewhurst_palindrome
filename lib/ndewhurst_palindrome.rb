require "ndewhurst_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  private

    # Returns content for palindrome testing.
    def processed_content
      lettersRegEx = /[a-z]/i
      self.scan(lettersRegEx).join.downcase
    end
end
