require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

get '/visit' do
	erb :visit
end

post '/visit' do
	@username = params[ :username]
	@phone = params[ :phone]
	@datetime = params[ :datetime]
	@barber = params[ :barber]
    @color = params[ :color]

    if @username == ""
	    	@error = "Введите имя "
	end    	

	if @phone == ""
		    @error = "Введите номер телефона"
	end
	
    if @datetime == ""
		    @error = "Введите дату и время"
	end

	if @error != ""    	
	    	return erb :visit
    end	

    erb  "username: #{@username} phone: #{@phone}  datetime: #{@datetime}  barber: #{@barber} color #{@color}"
end

