require 'pry'

class String

  def sentence?
    if self.end_with? (".")
      return true
    else 
      return false 
    end
  end

  def question?
    if self.end_with? ("?")
      return true
    else 
      return false 
    end
  end

  def exclamation?
    if self.end_with? ("!")
      return true
    else 
      return false 
    end
  end

  def count_sentences
    # array = self.split("_").count  #=> 1 (expected 3)
    new = self.split(/[.?!]/).reject {|x|x.empty?}
    # puts "#{self.split("_").count}"
    # binding.pry
    return new.count
  end
end