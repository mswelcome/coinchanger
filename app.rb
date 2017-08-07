#Coin Changer

require "sinatra"
require_relative "mcc.rb"
enable :sessions

get '/' do
	msg = params[:msg] || ""
	erb :login, locals: {msg: msg}

end

def login(un, pw)
	users = {admin: "admin", msw: "msw", guest: "guest"}
	pass = {a: "admin", m: "qwerty", g: "guest"}
	
	if users.has_value?(un) && pass.has_value?(pw) 
  		redirect '/user'
  	else
  		redirect '/?msg=Incorrect username or password' 
  	end
end 

post '/p_login' do	
	un = params[:un]
	pw = params[:pw]
	login(un, pw)
end 

get '/user' do
	yay = "Yay!!! Sucessful Login!"
	erb :un, locals: {yay: yay}
	
end

post '/un' do
	fn = params[:fn]
	ln = params[:ln]
	redirect '/coin?fn=' + fn + '&ln=' + ln
end

get '/coin' do
	fn = params[:fn]
	ln = params[:ln]
	erb :coin, locals: {fn: fn, ln: ln}
end

post '/p_coin' do
	fn = params[:fn]
	ln = params[:ln]
	change = params[:change]
	session[:coins] = cc(change.to_i)
	redirect '/results?fn=' + fn + '&ln=' + ln + '&change=' + change
end

get '/results' do
	fn = params[:fn]
	ln = params[:ln]
	change = params[:change]
	coins = params[:coins]
	erb :results, locals: {fn: fn, ln: ln, change: change, coins: session[:coins]}
end

post '/p_results' do
	fn = params[:fn]
	ln = params[:ln]
	redirect '/coin?fn=' + fn = '&ln=' + ln 
end