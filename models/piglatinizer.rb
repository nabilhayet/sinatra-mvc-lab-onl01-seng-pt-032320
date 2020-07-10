class PigLatinizer
  attr_reader :words
  def piglatinize(words)
      result = ""
      arr=[]
      results =[]
      val=""
      arr = words.split(" ")
      results =  arr.map.with_index do |value, index|
          c = value[0]

            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
              result = value + "way"
              results[index] = result
            else
              index = value.index(/[aeiouAEIOU]/)
              val = value.slice!(0..index-1)
              result = value + val + "ay"
            end
        end
        results
        binding.pry

  end
end
