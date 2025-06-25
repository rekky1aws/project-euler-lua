value = 2^1000
text = string.format("%18.0f", value)
sum = 0

for i=1,string.len(text) do
   toadd = string.sub(text,i,i)
   sum = sum + tonumber(toadd)
   print(i)
end

print(string.len(text))
-- print(sum)

-- Apparently the sum is not correct
-- It seems there is the correct number of digits (since ceil(log(2¹⁰⁰⁰)) = 302)
-- There might be an error when summing all the digits