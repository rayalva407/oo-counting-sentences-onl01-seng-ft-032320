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
    array = self.split(/[.?!]/)
    counter = 0
    if array.length > 0
      array.each do |sentence|
        counter += 1
      end
    else
      return counter
    end
  end
end