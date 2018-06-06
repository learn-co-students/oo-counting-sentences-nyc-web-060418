require 'pry'

class String

# Returns true if the string ends in a period and false if it does not.
  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    counter = 0
    word_array = self.split
    word_array.each do |item|
      if item.sentence? || item.question? || item.exclamation?
        counter += 1
      end
    end
  return counter
  end

end
