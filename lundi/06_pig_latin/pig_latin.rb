def translate(sentance)
	phrase = sentance.clone

	if phrase.index(" ")
		phrase = phrase.split(" ")
		phrase.map! { |word| word = translate(word)}
		phrase.join(" ")


	elsif voyelle(phrase[0])
		phrase << "ay"

	elsif Consomne(phrase[0..2])
		phrase = phrase.split("")
		c = phrase.shift << phrase.shift << phrase.shift
		phrase << c << "ay"
		phrase.join

	
	elsif Consomne(phrase[0..1])
		phrase = phrase.split("")
		c = phrase.shift << phrase.shift
		phrase << c << "ay"
		phrase.join


	elsif Consomne(phrase[0])
		phrase = phrase.split("")
		c = phrase.shift
		phrase << c << "ay"
		phrase.join
	end
end

def voyelle(c)
	c.index(/[aeiouAEIOU]/) == nil ? false : true
end

def Consomne(chars)
	
	chars.gsub!("qu", "qq") if chars.include?("qu")
	chars.split("").each { |c| return false if voyelle(c) }
	true
end