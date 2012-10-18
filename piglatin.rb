puts "Enter your sentence to translate."

#Get input
sentence = gets

sentencearray = []
newsent = []
vowels = ["a", "e", "i", "o", "u", "y"]

def getPunc(word)
	punctuations = /[.!,?]/

	punctuations =~ word
	punc = word[punctuations]
end

#Set up array with each word
sentencearray = sentence.split(" ")

sentencearray.each do |word|

	capitalize = word[0] == word[0].upcase ? true : false
	punc = getPunc(word)

	word.slice!(word.index(punc)) if punc != nil	

	if vowels.include? word[0].downcase
		word += "yay"
	else
		i = 0
		vowelindex = 0
		while i < word.length && vowelindex == 0
			if vowels.include? word[i].downcase
				vowelindex = i
			end
			i += 1
		end
		firstpart = word[vowelindex..word.length]
		secondpart = word[0..vowelindex-1] + "ay"
		word = (firstpart + secondpart).downcase
	end

	#Capitalize the first letter
	word[0] = word[0].upcase if capitalize
	#Add punctuation
	word += punc if punc != nil

	newsent.push(word)
end

puts newsent.join(" ")