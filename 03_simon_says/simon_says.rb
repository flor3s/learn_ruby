def echo(str)
    return str
end

def shout(str)
		return str.upcase
end

def repeat(str, n=1)
	repeated = str
	n <= 1 ?	n.times {	repeated += " " + str } : (n - 1).times {repeated += " " + str}
	repeated
end

def start_of_word(str, n=1)
	result = ""
	
	i = 0
	while i < n
		result += str[i]
	  i += 1
	end

	result
end

def first_word(str)
	arr = str.split
	arr[0]
end

def titleize(str)
	words = str.split
	capitalized = words.map.with_index do |word, i|
		if i != 0 && (word =="and" || word =="or" || word =="for" || word =="by" || word =="with" || word =="at" || word =="a" || word =="an" || word =="the" || word =="in" || word =="on" || word =="over" || word =="under" || word =="after" || word =="of" || word =="near" || word =="from" || word =="without")
		  word
		else
			word.capitalize
		end
	end

	capitalized.join(" ")
end