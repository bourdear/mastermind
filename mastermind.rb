def codebreaker()
  arr_ref = ["red", "green", "blue", "purple", "orange", "yellow"]
  saved =  arr_ref.sample(4)
 
puts "You are the codebreaker. You will need to guess 4 colors in an exact order to win. You will be notified if you guess the correct color in the right location or a matching color in the wrong location. Your goal is to crack the code in 12 turns or less."

puts " "
puts "The six colors to choose from are red, green, blue, purple, orange, and yellow. Let the code cracking begin!"

puts " "
  12.times do
    puts "Please enter 4 colors. "
    input = gets.chomp
    input = input.downcase.gsub(/[^a-z0-9\s]/i, '')

    arr = input.split

    result = arr.zip(saved).count { |a, b| a == b}
    final = saved - arr

    count = final.count
    puts " "

    if count == 4
      puts "You have not guessed any colors."
    elsif count == 3
      puts "You have correctly guessed 1 color."
    elsif count == 2
      puts "You have correctly guessed 2 colors."
    elsif count == 1
      puts "You have correctly guessed 3 colors."
    end

      if result == 0
        puts "No colors are an exact match."
      elsif result == 1
        puts "One color is an exact match!"
      elsif result == 2
        puts "Two colors are an exact match!"
      elsif result == 3
        puts "Three colors are an exact match!"
      elsif result == 4 
        puts "Four colors are an exact match. You win!"  
      exit!   
      end
      
    puts " "
    puts " "
  end
  puts "It looks like you weren't able to crack the code. Maybe someday you'll be a mastermind..."
end

def codemaker()
puts "You are the codemaker.  Please input 4 colors for the computer to guess. The six colors to choose from are red, green, blue, purple, orange, and yellow."
input = gets.chomp
input = input.downcase.gsub(/[^a-z0-9\s]/i, '')

arr = input.split

12.times do
  arr_ref = ["red", "green", "blue", "purple", "orange", "yellow"]
  saved =  arr_ref.sample(4)

  result = saved.zip(arr).count { |a, b| a == b}
    final = arr - saved

     count = final.count
    puts " "
    puts saved

    if count == 4
      puts "The computer has not guessed any colors."
    elsif count == 3
      puts "The computer has correctly guessed 1 color."
    elsif count == 2
      puts "The computer has correctly guessed 2 colors."
    elsif count == 1
      puts "The computer has correctly guessed 3 colors."
    end

      if result == 0
        puts "No colors are an exact match."
      elsif result == 1
        puts "One color is an exact match!"
      elsif result == 2
        puts "Two colors are an exact match!"
      elsif result == 3
        puts "Three colors are an exact match!"
      elsif result == 4 
        puts "Four colors are an exact match. The computer wins!"  
      exit!   
      end
      
    puts " "
    puts " "
  end
  puts "It looks like you were able to make an impossible to crack code. You are a mastermind!"
end

loop do 
puts "Welcome to Mastermind! Type 1 to play as the codebreaker and type 2 to play as the codemaker."
input = gets.chomp

if input.to_i == 1
codebreaker()
break
elsif input.to_i == 2 
codemaker()
break
elsif input.to_i != 1 || input.to_i != 2

end
end
