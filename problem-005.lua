print("Loading ...")
div = {}

n = 20
flag = true
while flag do
	flag = false
	for i=1,20 do
		if n%i == 0 then 
		else
			flag = true
		end
	end
	n = n+20
	-- io.read()
end
n = n-20
print("result : ", n);