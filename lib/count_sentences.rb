require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    check_string = self
    check_string = remove_consecutive_punctuation_marks(check_string)
    check_array = check_string.split(/[.?!]/)
    return check_array.length
  end

  def remove_consecutive_punctuation_marks(string)
    placeholder_string = string
    index = 0
    while index < placeholder_string.length - 1 do
      if check_subsequent_character(index)
        placeholder_string = replace_character(index, placeholder_string)
      end
      index += 1
    end
    return placeholder_string
  end

  def check_subsequent_character(index)
    if (self[index] == "." || self[index] == "?" || self[index] == "!") && (self[index + 1] == "." || self[index + 1] == "?" || self[index + 1] == "!")
      return true
    else
      return false
    end
  end

  def replace_character(index, string)
    placeholder_string = string
    placeholder_string[index] = "_"
    return placeholder_string
  end
end
