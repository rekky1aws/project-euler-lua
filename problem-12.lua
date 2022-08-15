i = 1
length = 1
number = 1

while length < 500 do
	i = i+1
	number = number + i
	print(number)
	length = 0
	for j=1,number^0.5  do
		if number // j == number / j then
			if j == number // j then
				length	= length + 1
				print("\t"..j)
			else
				length = length + 2
				print("\t"..j.."\t"..number // j)
			end
		end
	end
	print("\t\t\t"..length)
end

print("result :", number)