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
              result = value + "way"
              arr[index] = result
              binding.pry
            else
              index = value.index(/[aeiouAEIOU]/)
              val = value.slice!(0..index-1)
              result = value + val + "ay"
              arr[index] = result

            end
        end

  end
end
