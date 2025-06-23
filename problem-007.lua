primes = {}

function is_prime (number)
	for i=2, number-1 do
		if number // i == number / i then
			return false
		end
	end
	return true
end

n = 2
while #(primes) < 10001 do
	if is_prime(n) then
		table.insert(primes, n)
	end
	n = n + 1
	--print(table.concat( primes, ", " ))
	print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
	print(#(primes))
	print(#(primes) / 10001 * 100, "%")
end

print("result :", primes[#(primes)])