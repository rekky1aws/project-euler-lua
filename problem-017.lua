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


end