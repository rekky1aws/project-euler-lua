string = ""

function spell_number (nb)
	nb_str = string.format("%18.0f", nb)
	result = ""

	-- < 20
	words = {
		"one",
		"two",
		"three",
		"four",
		"five",
		"six",
		"seven",
		"eight",
		"nine",
		"ten",
		"eleven",
		"twelve",
		"thirteen",
		"fourteen",
		"fiften",
		"sixteen",
		"seventeen",
		"eighteen",
		"nineteen"
	}

	-- 2 digits
	words_2 = {
		"twenty",
		"thirty",
		"fourty",
		"fity",
		"sixty",
		"seventy",
		"eighty",
		"ninety"
	}

	-- > 2 digits
	words_3 = {
		"hundred",
		"thousand"
	}

	if nb == 100 then
		return "onehundred"
	end

	-- XXXXX__ 
	if nb > 100 then
		nb_div_100 = nb // 100
		dec = 1

		while nb_div_100 > 10 do
			result = result .. words[nb_div_100%10]
			result = result .. words_3[dec]
			nb_mod_100 = nb_mod_100 // 10
			dec = dec + 1
		end

		if nb_div_100 ~= 10 then
			result = result .. words[nb_div_100]
			result = result .. words_3[dec]
		else
			result = result .. "one"
			result = result .. words_3[dec+1]
		end

		if nb % 100  ~= 0 then
			result =  result .. "and"
		end	
	end

	
	-- ______XX
	nb_mod_100 = nb % 100
	if nb_mod_100 < 20 then
		if nb_mod_100 > 0 then
			result = result .. tostring(words[nb_mod_100])
		end
	else
		if nb_mod_100 % 10 == 0 then
			result = result .. tostring(words_2[(nb_mod_100//10) - 1])
		else
			result = result .. tostring(words_2[(nb_mod_100//10) - 1])
			result = result .. tostring(words[nb_mod_100%10])
		end
	end

	
	return result
end


final = ""
for i=1,1000 do
	spell = spell_number(i)
	final = final .. spell

	print(i, spell)
end

-- print(final)
print("result :", string.len(final))