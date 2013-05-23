=begin  

Travel ticket printing application:

	(a) collect total time
	(b) collect total cost 
	(c) adjust MPG if MPH is greater than 60
		(i) adjust total cost 
		(ii) adjust print ticket method
	(d) print ticket 
	(e) collect inputs from users 

=end 

#(a) collect total time
def total_time(distance, mph)
   time = distance / mph 
end 

#(b) collect total cost 
def total_cost(distance, mpg, cpg)
	price = (distance / mpg) * cpg 
end 

#(i) adjust total cost 
def adjusted_total_cost(distance, new_mpg, cpg)
	adjusted_price = (distance / new_mpg) * cpg
end

#(c) adjust MPG if MPH is greater than 60
def adjust_mpg(mpg, mph)
	if mph > 60
		temp = mph 
		temp = temp - 60 
		minus_mpg = temp * 2 
		new_mpg = mpg - minus_mpg 
	end 
end 

#(ii) adjust print ticket method if MPH is greater than 60 
def print_ticket(price, time, mph, adjusted_price)
	if mph > 60
		print "Your trip will take  #{time.to_s.round(2)} hours and cost $ #{adjusted_price.to_s.round(2)} dollars. \n"
	else
		print "Your trip will take #{time.to_s.round(2)} hours and cost $ #{price.to_s.round(2)} dollars. \n"
	end  
end 

#inputs 
print "What is the total distance? "
distance = gets.chomp.to_f 

print "What is the average speed you plan to travel? "
mph = gets.chomp.to_f

print "What is the cost of one gallon of gas? "
cpg = gets.chomp.to_f 

print "How many miles per gallon does your car get? "
mpg = gets.chomp.to_f 

#variables for print ticket 
a = total_cost(distance, mpg, cpg)
b = total_time(distance, mph)
c = adjusted_total_cost(distance, adjust_mpg(mpg, mph), cpg)


#(d) print ticket 
print_ticket(a, b, mph, c)






