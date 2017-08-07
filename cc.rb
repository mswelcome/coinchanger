#Coin Changer

def cc(c)
	v = {quarter: 25, dime: 10, nickel: 5, penny: 1}
	if c == 1
		{quarter: 0, dime: 0, nickel: 0, penny: 1}
	elsif c == 5 
		{quarter:0, dime: 0, nickel: 1, penny: 0}
	end
end