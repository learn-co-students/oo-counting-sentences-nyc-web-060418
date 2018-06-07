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
    string_split_arr = self.split(".")
    q_removed_arr= string_split_arr.map do |string|
      arr_strings_wo_q_or_p = string.split("?")
      arr_strings_wo_q_or_p.map do |new_string|
          new_string.split("!")
      end
    end
    last_arr= q_removed_arr.flatten
    last_arr.delete("")
    last_arr.length
  end
end
