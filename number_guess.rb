answer = rand(1..10)
puts "Guess a number between 1 and 10!"

i = 0
loop do
	i = i + 1
	guess = gets.strip.to_i
	if guess == answer && i == 1
		puts "You got it on the first try, well done!"
		break
	elsif guess == answer && i > 1
		puts "That's it, well done!"
		break
	elsif guess > answer
		puts "Too high, go lower!"
	elsif guess < answer
		puts  "Too low, go higher!"
	end
	if guess != answer && i >= 3
		puts "You lose! The answer was " + answer.to_s
		break
	end
end