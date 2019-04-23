count_num = gets.to_i
paper_buyitems = []
sum = []
i = 0

count_num.times do 
    paper_buyitems[i] = gets
    i += 1
end

day_ary = paper_buyitems.map do |n|
    n = n.to_i
end

new_ary = paper_buyitems.map do |n|
    if n[0..1].include?(" ")
        n.slice!(0,2)
    elsif n.size == 7
        n.slice!(0,3)
    elsif n.size == 8
        n.slice!(0,3)
    elsif n.size == 9
        n.slice!(0,3)
    end
    n = n.to_i
end

result = [day_ary, new_ary].transpose
hash = Hash[*result.flatten]

hash.each do |key, value|
    if key == 3
        sum << (hash[3]*0.03).floor
    elsif key == 13
        sum << (hash[13]*0.03).floor
    elsif key == 30
        sum << (hash[30]*0.03).floor
    elsif key == 5
        sum << (hash[5]*0.05).floor
    elsif key == 15
        sum << (hash[15]*0.05).floor
    elsif key == 25
        sum << (hash[25]*0.05).floor
    else 
        sum << (value*0.01).floor
    end
end

puts sum.inject(:+)


