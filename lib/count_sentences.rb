require 'pry'

class String

  def sentence?
    if self[-1] == "."
     true 
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true 
     else
       false
     end
  end

  def exclamation?
    if self[-1] == "!"
      true 
     else
       false
     end
  end

  def count_sentences
    # count = 0
    str = self
    str.each_char.with_index do |value, index|
      case value
      when ".", "!", "?"
        case str[index+1]
        when ".",  "!", "?"
          str[index+1] = " "
          case str[index+2]
          when ".",  "!", "?"
            str[index+2] = " "
          end
        end
      end
    end
    str.count("." + "!" + "?")
    # count += self.count("!")
    # count += self.count("?")
    # count
  end
end