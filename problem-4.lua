highest = 0

for i=1,999 do
	for j=1,999 do
		if tostring(i*j) == string.reverse(tostring(i*j)) then
			if i*j > highest then
				highest = i*j
			end
			print(i, "x", j, "=", i*j)
		end
	end
end

print(highest)