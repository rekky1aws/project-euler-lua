value = 2^1000
text = string.format("%18.0f", value)
sum = 0

for i=1,string.len(text) do
   toadd = string.sub(text,i,i)
   sum = sum + tonumber(toadd)
   print(i)
end

print(string.len(text))