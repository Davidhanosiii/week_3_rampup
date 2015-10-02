num_1=0

num_2=1

total=0

while (num_2 <4000000)
	
	total += num_2 if num_2.even?

	the_one_before = num_2 

	num_2 = num_1 + num_2

	num_1 = the_one_before
	
end

puts total