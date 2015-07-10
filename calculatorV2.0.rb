class BasicFunc
	def add(num1, num2) #THIS ADDS 2 NUMBERS TOGETHER
		puts " "
		puts "#{num1} + #{num2} = #{num1.to_f + num2.to_f}"
	end

	def subtract(num1, num2) #THIS SUBSTRACTS 2 NUMBERS 
		puts " "
		puts "#{num1} - #{num2} = #{num1.to_f - num2.to_f}"
	end

	def multiply(num1, num2) #THIS GIVES THE PRODUCT OF TWO NUMBERS
		puts " "
		puts "#{num1} * #{num2} = #{num1.to_f * num2.to_f}"
	end

	def divide(num1, num2) #THIS DIVIDES ONE NUMBER BY THE OTHER
		puts " "
  		puts "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
	end

end
class Startup
	def is_num?(string)
 		true if Float(string) rescue false
	end
	def num2(num1, operator)
		num2 = ""
  		while is_num?(num2) == false do
			puts ""
			puts "Your first number is " + num1
			puts "Your operation is " + operator
			puts "Please enter your second number:"
			num2 = gets.chomp
		end
  		if (operator == "+") || (operator == "|+|") #Chooses the operator to use and passes it using number 1 and 2 as the arguments.
			BasicFunc.add(num1, num2)
  		elsif (operator == "-") || (operator == "|-|") #It then "puts" them so that the user can see what the operation resolves to.
	  		BasicFunc.subtract(num1, num2)
  		elsif (operator == "*") || (operator == "|*|")
	  		BasicFunc.multiply(num1, num2)
  		elsif (operator == "/") || (operator == "|/|")
    		if num2.to_f == 0
      			puts "You can't divide by zero >_< \nWhy dont we just start again ^~^" 
      			chooseNum 
			end
   		else
	    	BasicFunc.divide(num1, num2)
		end
	end
	def operator(num1) #OPERATION METHOD (Calls all pervious methods ^~^)
		puts ""
		operator = ""
		while (operator != "+") && (operator != "|+|") && (operator != "-") && (operator != "|-|") && (operator != "*") && (operator != "|*|") && (operator != "/") && (operator != "|/|") && (operator == "") do
				puts "Your first number is: " + num1
				puts "Please input an operator"
				puts "|+| |-| |*| |/|"
				puts ""
				operator = gets.chomp
		end
		num2(num1, operator)
end
	def chooseNum #When run, this starts the program from the start (except for the title)
  		a=""
  		while is_num?(a)==false do
    	puts "What is your first term?"
    	a = gets.chomp
  		end
  	operator(a)
	end
end
start = Startup.new
start.chooseNum