#Coin Changer hopefully my way

def cc(change)
	coins = {quarter: 0, dime: 0, nickel: 0, penny: 0}

	while change >= 25 do 
		coins[:quarter] = change/25
		change = change % 25
	end

	while change >= 10 do 
		coins[:dime] = change/10
		change = change % 10
	end

	while change >=5 do 
		coins[:nickel] = change/5
		change = change % 5
	end

	while change >=1 do
		coins[:penny] = change/1
		change = change % 1
	end

 
	coins

end
