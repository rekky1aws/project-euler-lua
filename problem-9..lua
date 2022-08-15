function pytha_tripl (result)
	for a=1,1000 do
		for b=1,1000 do
			c = (a^2 + b^2)^0.5
			print(a^2, "+", b^2, "=", a^2 + b^2)
			if a + b + c == result then
				return a*b*c
			end
		end
	end
end

rslt = pytha_tripl(1000)
print("result :", rslt)