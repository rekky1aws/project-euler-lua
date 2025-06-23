function collatz (n)
	fly = 0
	while n > 1 do
		if n%2 == 0 then
			n = n/2
		else
			n = 3 * n + 1
		end
		fly = fly +1
	end
	return fly
end

max = 0
maxInd = 0
for i=1,1000000 do
	coll = collatz(i)
	if coll > max then
		max = coll
		maxInd = i
	end
end

print("result :", max, maxInd)