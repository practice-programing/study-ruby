count_log = gets.to_i
array = []
result = []
i = 0
n = 1

count_log.times do
    array[i] = gets.to_i
    i += 1
end

result << (1 - array[0]).abs
roop_count = array.size

while n < roop_count do
    result << (array[n-1] - array[n]).abs
    n += 1
end

print result.inject(:+)
    

