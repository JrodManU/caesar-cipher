def cipher(string, shift_number)
	new_string = ""
	string.each_char do |char|
		if char.match(/[a-zA-Z]/)
			shift_number.times do
				if char.match(/z/)
					char = "a"
				elsif char.match(/Z/)
					char = "A"
				else
					char.next!
				end
			end
		end
		new_string << char
	end
	return new_string
end
puts cipher("What a string!", 5)