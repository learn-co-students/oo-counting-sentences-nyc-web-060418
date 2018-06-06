require 'pry'

class String

  # attr_accessor :input_string
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
    elements = self.split("!") && self.split("?") && self.split(".")
    # elements.length
    elements.each_with_index do |element,i|
      i = -1
      element[i].split("!") || element[i].split(".") || element[i].split(".")
      binding.pry
    end
    elements.length




      # if character == "!" || character == "?" || character == "."
      #   elements = self.split("!") && self.split("?") && self.split(".")
      #   return elements.length
    #
    # elements = self.split("!") && self.split("?") && self.split(".")
    # elements.length
      # if question? == true || exclamation? == true || sentence? == true
      #   elements = self.split("!") && self.split("?") && self.split(".")
      #   return elements.length
      # elsif self.split("")[-2] == "!" || self.split("")[-2] == "?" || self.split("")[-2] == "."
      #   elements = self.split("!") && self.split("?") && self.split(".")
      #   return elements.length
    #   end
    # end
  # end
# end
# end
end
end
