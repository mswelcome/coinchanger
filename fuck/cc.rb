#Coin Changer

def cc(change)
 	q = 0
 	d = 0 
 	n = 0
 	p = 0

	coins = {quarter: 0, dime: 0, nickel: 0, penny: 0}
	
	while change >= 25 do
		change -=25
		q += 1
	end

	while change >= 10 do
		change -= 10
		d += 1
	end

	while change >= 5 do 
		change -= 5
		n += 1
	end

	while change >= 1 do
		change -= 1
		p += 1
	end

	 coins[:quarter] = q
	 coins[:dime] = d
	 coins[:nickel] = n
	 coins[:penny] = p 

	coins
end