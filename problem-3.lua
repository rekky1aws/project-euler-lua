number = 600851475143

function is_prime (number)
	for i=2, number-1 do
		if number // i == number / i then
			return false
		end
	end
	return true
end

for i=2,number/2 do
	if number / i == number // i then
		print(number/i)
		if is_prime(number//i) then
			print("","^ is a prime number")
		end
	end
end