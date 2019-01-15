# Translate letter into ASCII
def letter_to_ASCII (letter)
chiffre_initial = letter.ord
end


# Translate ASCII back to letter
def ASCII_to_letter (chiffre_code)
message_code = chiffre_code.chr
end


# Encrypt letters with the key
def letter_encryption (letter, key)
chiffre_initial = letter_to_ASCII (letter)

	if (chiffre_initial >= 65) && (chiffre_initial <= 90)
		

		if chiffre_initial < (90 - key)
			chiffre_code = chiffre_initial + key
		else
			reste = chiffre_initial + key - 91
			chiffre_code = 65 + reste
		end
		

	elsif (chiffre_initial >= 97) && (chiffre_initial <= 122)
		chiffre_code = chiffre_initial + key

		if chiffre_initial < (122 - key)
			chiffre_code = chiffre_initial + key
		else
			reste = chiffre_initial + key - 123
			chiffre_code = 97 + reste
		end

	else chiffre_code = chiffre_initial
	end

message_code = ASCII_to_letter (chiffre_code)
end

# Principal method calling all the others methods and spliting the split string into array of words and into letters
def caesar_cipher(word,key)
	array_of_words = word.split(' ')
	 array_of_words.map! do |word| 
		word.chars.map! { |letter| letter = letter_encryption(letter, key)}.join
	 end
	 return array_of_words.join(' ')
end

caesar_cipher("What a string!", 5)
caesar_cipher("abc", 5)
caesar_cipher("azerty est con!", 5)