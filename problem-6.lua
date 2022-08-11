sum_of_squares = 0
for i=1,100 do
	sum_of_squares = sum_of_squares + i ^ 2
end

square_of_sums = 0
for i=1,100 do 
	square_of_sums = square_of_sums + i
end
square_of_sums = square_of_sums ^ 2

print(square_of_sums, "-", sum_of_squares, "=", square_of_sums - sum_of_squares)
print("result :", square_of_sums - sum_of_squares)