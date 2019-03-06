count = gets.to_i
array = []
i = 0
num_1 = 0
num_2 = 0

count.times do
    array[i] = gets.split(" ")
    i += 1
end

array.each do |ary|
    if ary.include?("SET")
        if ary.include?("1")
            num_1 = ary[2].to_i
        elsif ary.include?("2")
            num_2 = ary[2].to_i
        end
    end
    
    if ary.include?("ADD")
        num_2 = num_1 + ary[1].to_i
    end
    
    if ary.include?("SUB")
        num_2 = num_1 - ary[1].to_i
    end
end

print num_1.to_s + " " + num_2.to_s
    
