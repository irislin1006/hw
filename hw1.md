#用Ruby寫出簡單的計算機

#require 'pry'

def addition(num1,num2)
	return num1+num2
end

def subtraction(num1,num2)
	return num1-num2
end

def mul(num1,num2)
	return num1*num2
end

def div(num1,num2)
	return num1/num2
end

begin
	puts "please enter your choice"
	operation = gets.chomp
	
	puts "please enter number 1"
	num1 = gets.chomp.to_i

	puts "please enter number 2"
	num2 = gets.chomp.to_i

	puts "your anwser"

	if operation == "+" then puts addition(num1,num2)
	elsif  operation == "-" then puts subtraction(num1,num2)
	elsif  operation ==  "*" then puts mul(num1,num2)
	elsif  operation ==  "/" then puts div(num1.to_f,num2.to_f)
	else 
		puts "goodbye"
	end
end while operation != "1"  

