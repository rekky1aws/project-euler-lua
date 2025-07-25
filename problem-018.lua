pyramid = {
	{75},
	{95, 64},
	{17, 47, 82},
	{18, 35, 87, 10},
	{20, 04, 82, 47, 65},
	{19, 01, 23, 75, 03, 34},
	{88, 02, 77, 73, 07, 63, 67},
	{99, 65, 04, 28, 06, 16, 70, 92},
	{41, 41, 26, 56, 83, 40, 80, 70, 33},
	{41, 48, 72, 33, 47, 32, 37, 16, 94, 29},
	{53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14},
	{70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57},
	{91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48},
	{63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31},
	{04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23}
}

function dec_to_bin(num)
    local t={}
    while num>0 do
        rest=math.fmod(num,2)
        t[#t+1]=rest
        num=(num-rest)/2
    end
    return t
end

function path_sum (pathing, pyramid)
	result = 0
	j = 1
	result = result + pyramid[1][1]
	for i=2,#(pyramid) do
		if pathing[i-1] then
			j = j + pathing[i-1]
		end
		result = result + pyramid[i][j]
	end

	return result
end

max = 0
for i=0,2^(#(pyramid)-1)-1 do
	sum = path_sum(dec_to_bin(i), pyramid)
	if sum > max then
		max = sum
	end
end

print("result :", max)