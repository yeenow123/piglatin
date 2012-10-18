puts "Enter your sentence to translate."

#Get input
sentence = gets

sentencearray = []
newsent = []
vowels = ["a", "e", "i", "o", "u", "y"]

#Set up array with each word
sentencearray = sentence.split(" ")

sentencearray.each do |word|

	capitalize = word[0] == word[0].upcase ? true : false

	if vowels.include? word[0].downcase
		word += "yay"
	else
		i = 0
		vowelindex = 0
		until (vowelindex != 0 && vowelindex != nil)
			vowelindex = word.index(vowels[i])
			i += 1
		end
		firstpart = word[vowelindex..word.length]
		secondpart = word[0..vowelindex-1] + "ay"
		word = (firstpart + secondpart).downcase
	end

	word[0] = word[0].upcase if capitalize

	newsent.push(word)
end

puts newsent.join(" ")
