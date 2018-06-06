require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end


  def count_sentences
    sentence_array = self.split
    final_array = sentence_array.select do |word|
      word.sentence? || word.question? || word.exclamation?
    end
    final_array.length
    #binding.pry
  end
#"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences

end
