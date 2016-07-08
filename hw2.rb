#這是一個剪刀石頭布的遊戲
#比較規則 function
def rule(user_input, computer)
    if user_input == computer then "It's a draw"

    elsif user_input == "R" 
    	if computer == "P" then "You lost"
    	elsif computer == "S" then "You win"
    	end

    elsif user_input == "P" 
    	if computer == "S" then "You lost"
    	elsif computer == "R" then "You win"
    	end

    elsif user_input == "S" 
    	if computer == "R" then "You lost"
    	elsif computer == "P" then "You win"
    	end
    end
end

#main function
puts "welcome to rock paper scissor <3"

begin 
	begin
		puts "R/ P/ S, what's your choice? :"
		user_input = gets.chomp.upcase
	end while !["R", "P", "S"].include?(user_input)   #如果不是這三個選擇將會一直問
#start 讓電腦出拳 
    computer = ["R", "P", "S"].sample

    result = rule(user_input, computer)
    
    puts "your choice is #{user_input}, computer's choice is #{computer}, so #{result}"

    #問玩家還要不要玩
    begin 
    	puts "Do you wanna play again? : Y/N"
    	continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)

end while continue != "N"
puts "Goodbye!!!"
