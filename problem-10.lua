function is_prime (number)
	if number == 1 then
		return false
	end
	for i=2, number-1 do
		if number // i == number / i then
			return false
		end
	end
	return true
end

sum = 2
print(1, 0)
print(2 ,2)
for i=3,2000000,2 do
	if is_prime(i) then
		sum = sum + i
		print(i, sum)
	end
end

print("result :", sum)