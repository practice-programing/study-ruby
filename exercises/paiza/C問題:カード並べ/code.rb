array = gets.split(" ").map &:to_i
array.sort!.reverse!
num = array.max
array.delete(num)

new_array1 = []
new_array2 = []
new_array1 << array[0..1]
new_array2 << num
new_array2 << array[2]

puts new_array1[0..1].join("").to_i + new_array2[0..1].join("").to_i



