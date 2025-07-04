function disp_pyr (pyramid)
	for i=1,#(pyramid) do
		for k=1,(#(pyramid) - i) do
			io.write('  ')
		end
		for j=1,#(pyramid[i]) do
			io.write(string.format("%02d  ", pyramid[i][j]))
		end
		io.write("\n")
	end
end

function hghst_nb_pos (pyramid)
	hghst_val = 0
	hghst_i = 0
	hghst_j = 0

	for i=1,#(pyramid) do
		for j=1,#(pyramid[i]) do
			if pyramid[i][j] > hghst_val then
				hghst_val = pyramid[i][j]
				hghst_i = i
				hghst_j = j
			end
		end
	end

	result = {hghst_i, hghst_j}

	return result
end

function dec_to_bin(num)
    -- returns a table of bits, least significant first.
    local t={} -- will contain the bits
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
		-- print(j)
		result = result + pyramid[i][j]
	end
	-- print("====")

	return result
end
