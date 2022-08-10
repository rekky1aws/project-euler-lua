sum = 0
for i=1,999 do
	if i%3 == 0 or i%5 == 0 then
		print(i)
		sum = sum + i
	end
end

print("result :")
print(sum)

--[[234168--]]