require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end



  def count_sentences
    new_array = self.split.select do |word|
    word.sentence? || word.question? || word.exclamation?
  end
  new_array.length
  end

end
