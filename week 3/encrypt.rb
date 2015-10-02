puts "please type in a message to be encrypted below:"
puts ""
message=gets.to_s.downcase 
puts "please type the secret number to encrypt the message:"
number=gets.to_i

def encrypt(message, number)

	 # alphabet_array=("a".."z").to_a
	 # place=(0..25).to_a

	 # alphabet_hash= alphabet_array.zip(place).to_h

	 # puts alphabet_hash

	ascii_message = message.chars.map { |x| x.ord }	

	new_ascii = ascii_message.map { |x| number + x }

	code = new_ascii.map { |x| x.chr }.join

	puts code

end

encrypt(message, number)

puts "would you like to decrypt the message?"

answer = gets.downcase.to_s

if answer = "yes"
	puts "please type in a message to be decrypted below:"
	puts ""
	message=gets.to_s.downcase 
	puts "please type the secret number to decrypt the message:"
	number=gets.to_i
	def decrypt(message, number)
		ascii_message = message.chars.map { |x| x.ord }	
		new_ascii = ascii_message.map { |x| x - number }
		code = new_ascii.map { |x| x.chr }.join
		puts code
	end
	decrypt(message,number)

else
	puts "Blah"
end


	




