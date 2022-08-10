fibo_arr = {1, 2}
while fibo_arr[#(fibo_arr)] < 4000000 do
	table.insert(fibo_arr, fibo_arr[#(fibo_arr)] + fibo_arr[#(fibo_arr) - 1])
end

print(table.concat(fibo_arr, ","))

sum = 0
for i=1,#(fibo_arr) - 1 do
	if fibo_arr[i] % 2 == 0 then
		sum = sum + fibo_arr[i]
	end
end

print("result : ", sum)