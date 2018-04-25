class String
  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentences = 0
    punctuation = ['.', '!', '?']
    self.squeeze.chars.each { |c| sentences += 1 if punctuation.include?(c) }
    sentences
  end
end
