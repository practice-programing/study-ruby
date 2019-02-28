formula = gets.split(" ")
op_index = formula.index("x")
result = 0

if op_index == 0 && formula.include?("+")
    result = formula[4].to_i - formula[2].to_i
    puts result
elsif op_index == 0 && formula.include?("-")
    result = formula[4].to_i + formula[2].to_i
    puts result
elsif op_index == 2 && formula.include?("+")
    result = formula[4].to_i - formula[0].to_i
    puts result
elsif op_index == 2 && formula.include?("-")
    result = formula[0].to_i - formula[4].to_i
    puts result
elsif op_index == 4 && formula.include?("+")
    result = formula[0].to_i + formula[2].to_i
    puts result
else
    result = formula[0].to_i - formula[2].to_i
    puts result
end
