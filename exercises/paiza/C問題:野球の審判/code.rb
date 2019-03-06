count_baseball = gets.to_i
baseball_count = readlines.map &:chomp
i = 0
num_ball = 0
num_strike = 0

count_baseball.times do
    
    if baseball_count[i] == "ball" 
        num_ball += 1
    elsif baseball_count[i] == "strike"
        num_strike += 1
    end
    
    if num_strike == 3
            puts "out!"
            break
    elsif num_ball == 4
            puts "fourball!"
            break
    end
    
    puts baseball_count[i] + "!"
    
    i += 1
    
end

