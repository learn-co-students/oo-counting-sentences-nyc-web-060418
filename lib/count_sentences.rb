require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self_arr = self.split
    count = 0
    self_arr.each do |str|
      if str.sentence? || str.question? || str.exclamation?
        count += 1
      end
    end
    return count
  end

end


# str = String.new("How. Are! You?")
#
# str.count_sentences
