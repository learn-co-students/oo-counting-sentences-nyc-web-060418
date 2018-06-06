require 'pry'

class String

  def sentence? #return true if the string being called upon ends in a period, and false if not
    self.end_with?(".") ? true : false
  end

  def question? #return true if the string ends in a question mark, return false if not
    self.end_with?("?") ? true : false
  end

  def exclamation? #same but with exclamation mark
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences

    new_array = self.split.select do |word|
      word.sentence? || word.exclamation? || word.question?
    end
    new_array.length

  end

end
