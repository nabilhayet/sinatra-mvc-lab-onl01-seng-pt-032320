class PigLatinizer
  attr_reader :words
  def piglatinize(words)
      result = ""
      arr=[]
      val=""
      arr = words.split(" ")
        arr.each_with_index do |value, index|
          c = value[0]
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
              value = value + "way"
              arr[index] = value
            else
              index = value.index(/[aeiou]/)
              val = value.slice!(0,index)
              value = value + val + "ay"
              arr[index] = value
            end
        end

  end
end
