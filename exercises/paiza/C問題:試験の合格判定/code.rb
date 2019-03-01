student_num = gets.to_i
exam_point = []
count_l = 0
count_s = 0
i = 0

student_num.times do
    exam_point[i] = gets.split(" ")
    i += 1
end

exam_point.each do |ary|
    if ary.include?("l")
        ary.delete_at(0)
        ary.map!{|i| i.to_i}
        if ary.inject(:+)  >= 350 && ary[3] + ary[4] >= 160
            count_l += 1
        end
    elsif ary.include?("s")
        ary.delete_at(0)
        ary.map!{|i| i.to_i}
        if ary.inject(:+)  >= 350 && ary[1] + ary[2] >= 160
            count_s += 1
        end
    end
end

puts count_s + count_l
        
