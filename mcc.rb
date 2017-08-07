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

 	if coins[:quarter] > 1
		qua = coins[:quarter]
		coins.delete(:quarter)
		coins[:quarters] = qua
	end

	if coins[:dime] > 1
		dim = coins[:dime]
		coins.delete(:dime)
		coins[:dimes] = dim
	end

	if coins[:nickel] > 1
		nic = coins[:nickel]
		coins.delete(:nickel)
		coins[:nickel] = nic
	end

	if coins[:penny] > 1
		pen = coins[:penny]
		coins.delete(:penny)
		coins[:pennies] = pen
	end


	coins.each do |key,value|
		if value.to_i == 0
			coins.delete(key)
		end
	end

	coins.to_a.flatten.join(" ")

 	

end
