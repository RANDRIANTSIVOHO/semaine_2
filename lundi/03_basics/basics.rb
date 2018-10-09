# write your code here
def who_is_bigger (a, b, c)
	if (a == nil) || (b == nil) || (c == nil) 
		"nil detected"
	elsif ( a > b)  && (a > c) 
		"a is bigger"
	elsif (b > a)  && (b > c)
		"b is bigger"
	elsif (c > a) && (c > b)
		"c is bigger"
	end
end

def reverse_upcase_noLTA (anagramme)

	anagramme.upcase!
	anagramme.gsub!(/[LTA]/, "")
	anagramme.reverse!
end

def array_42(number)
	if number.include?(42)
		true
	else
		false
	end
end

def magic_array(table)
	table.flatten!
	arr = []
	j = 0
	table.each {|x|
		if (x *2) % 3 != 0  then

			arr [j] = x * 2
			j += 1
		end
	}
	return arr.uniq.sort!	
end