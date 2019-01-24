require 'sinatra/base'

class Birthday < Sinatra::Base

get '/' do
erb :index
 end

get '/happy_birthday' do
@name = params[:name]
erb :happy_birthday_name
end

  run! if app_file == $0
end
