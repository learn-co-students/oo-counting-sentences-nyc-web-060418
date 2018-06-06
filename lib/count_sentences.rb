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
    new_array = []

    self.split.each do |string|
      if string.sentence? || string.question? || string.exclamation?
        new_array << string
      end
    end
      new_array.length
  end
end
