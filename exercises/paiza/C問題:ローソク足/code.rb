num = gets.to_i
num_array = []
max_stock_price_array = []
min_stock_price_array = []
result = []
start_stock_price = 0
last_stock_price = 0
i = 0

num.times do
    num_array[i] = gets.split(" ").map &:to_i
    i += 1
end

start_stock_price = num_array[0][0]
last_stock_price = num_array[num-1][1]

max_stock_price = num_array
min_stock_price = num_array

new_max = max_stock_price.map do |n|
    n.max
end

new_min = min_stock_price.map do |n|
    n.min
end

result << start_stock_price
result << last_stock_price
result << new_max.max
result << new_min.min

print result.join(" ")

    

