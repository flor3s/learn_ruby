def translate(str)
	vowels = ["a", "e", "i", "o", "u"]
	words = str.split

	result = words.map do |word|
  	arr = word.split("")
  	consonants = ""

  	i = 0
  	until vowels.include?(word[i]) && ((word[i] == "u" && word[i - 1] == "q") == false)
  		consonants = consonants + arr.shift
  		i += 1
  	end

  	arr.join("") + consonants + "ay"
  end

  result.join(" ")
end