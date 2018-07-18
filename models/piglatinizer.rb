class PigLatinizer
<<<<<<< HEAD
  
  def piglatinize(text)
    piglatin = ''
    
    if text.split(" ").length == 1
      piglatin = piglatinize_word(text)
    else
      piglatin = piglatinize_sentence(text)
    end
    piglatin
  end
  
  def consonant?(text)
    !text.match(/[aAeEiIoOuU]/)
  end
  
  def piglatinize_word(text)
    if !consonant?(text[0])
      text = text + "w"
      elsif consonant?(text[0]) && consonant?(text[1]) && consonant?(text[2])
        text = text.slice(3..-1) + text.slice(0,3)
      elsif consonant?(text[0]) && consonant?(text[1])
=======
  attr_reader :text
  
  def initialize(text)
    @text = text.downcase
  end
  
  def consonant?(text)
    !text.scan(/[aAeEiIoOuU]/)
  end
  
  def latinize
    if !consonant(text[0])
      text = text + "w"
      elsif consonant(text[0]) && consonant(text[1])
>>>>>>> cfa86879e75715cd5d2156d5b0642b8626de73dd
        text = text.slice(2..-1) + text.slice(0,2)
      else
        text = text.slice(1..-1) + text.slice(0)
      end
    text << "ay"
  end
<<<<<<< HEAD
  
  def piglatinize_sentence(text)
    text.split.collect { |word| piglatinize_word(word) }.join(" ")
  end
  
=======
>>>>>>> cfa86879e75715cd5d2156d5b0642b8626de73dd
end