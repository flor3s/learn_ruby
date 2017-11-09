class Book
  def title=(t)
    @title = t
  end

  def title
  	do_not_capitalize = [
  		"and", 
  		"or", 
  		"for", 
  		"by", 
  		"with", 
  		"without", 
  		"at", 
  		"a", 
  		"an", 
  		"the", 
  		"there", 
  		"in", 
  		"on", 
  		"over", 
  		"under", 
  		"after", 
  		"of",  
  		"from"
  	]

  	words = @title.split(" ")
  	result = words.map.with_index do |word, i|
			if i != 0 && do_not_capitalize.include?(word)
				word
			else
				word.capitalize
  		end
  	end

  	result.join(" ")
  end
end