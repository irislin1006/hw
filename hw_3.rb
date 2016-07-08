#運用物件導向的方式寫剪刀石頭布

class Player
	attr_accessor :choice

	def initialize(choice)
		@choice = choice
	end
end

class Human < Player 
	def get_gesture
		begin
			puts "R/ P/ S, what's your choice? :"
			self.choice = gets.chomp.upcase
		end while !["R", "P", "S"].include?(choice)
	end
end

class Computer < Player
	def get_gesture
		self.choice = ['R', 'P', 'S'].sample
	end
end



class RPS

	attr_accessor :player, :computer

	def initialize
		@player = Human.new("you")
		@computer = Computer.new("computer")
	end

	def intro
		puts " ==================================== "
		puts "  welcome to Rock Paper Scissor <3 "
		puts " ==================================== "
	end


	def rule
		if player.choice == computer.choice then "It's a draw"

    	elsif player.choice == "R" 
    		if computer.choice == "P" then "You lost"
    		elsif computer.choice == "S" then "You win"
    		end

    	elsif player.choice == "P" 
    		if computer.choice == "S" then "You lost"
    		elsif computer.choice == "R" then "You win"
    		end

    	elsif player.choice == "S" 
    		if computer.choice == "R" then "You lost"
    		elsif computer.choice == "P" then "You win"
    		end
    	end
	end

	def continue
		begin 
			puts "Do you wanna play again? : Y/N"
			continue = gets.chomp.upcase
		end while !['Y', 'N'].include?(continue)
		if continue == 'Y'
			game = RPS.new.play
		elsif 
			puts "Goodbye!!!"
		end		
	end

	def play
		intro
		#begin
		player.get_gesture
		computer.get_gesture
		rule
		puts "your choice is #{player.choice}, computer's choice is #{computer.choice}, so #{rule}"
		continue
		#end while continue != 'N'
		#puts "Goodbye"
	end
end



game = RPS.new.play







