puts "Please enter a starting year for the analysis:"

startyear=gets.to_i
puts ""

puts "Please enter an ending year for the analysis:"

endyear=gets.to_i
puts ""



def create_array(startyear, endyear)
	array = []
	(startyear..endyear).each do |year|
		array.push(year)
	end

	leap(array)
end

def leap(array)
	four_array=[]
	fourhun_array=[]
	trash=[]


	array.each do |year|
		
		if year%100==0
			if year%400==0
				fourhun_array.push(year)
			else
				trash.push(year)
			end
		elsif year%4==0
			four_array.push(year)
		else
			trash.push(year)
		end
	end

	four_array.each do |add|
		fourhun_array.push(add)
	end 

	puts fourhun_array.sort
end


create_array(startyear, endyear)


