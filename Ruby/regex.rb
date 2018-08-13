class Regex
def phoneno_match(number)
	pattern =/(\(\d{3}\))\s(\d{3})-(\d{4})/
	m=pattern.match(number)
	unless m
		puts "There is no match"
		exit
	end
	puts "The whole string is :"
	puts m.string
end
def number_only(number)
	pattern=/\A-?\d+\Z/
	m=pattern.match(number)
	unless m
		puts "there is no match"
		exit
	end
	puts "The whole number is: #{m.string} "
end
end


regex1=Regex.new
regex1.phoneno_match("my phone no is : (911) 975-4522)")
regex1.number_only("9560291142")