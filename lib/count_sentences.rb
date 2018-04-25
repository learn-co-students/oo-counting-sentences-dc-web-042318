require 'pry'

class String
  attr_accessor :phrase
  def initialize(phrase)
    @phrase = phrase
  end

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
    self.split(/[?.!] /).count
  end
end
