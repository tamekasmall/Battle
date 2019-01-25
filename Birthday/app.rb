require 'sinatra/base'
require 'time_difference'

class Birthday < Sinatra::Base

get '/' do
erb :index
 end

post '/happy_birthday' do
  @name = params[:name]
  erb :happy_birthday_name
end

get '/countdown' do
  @month = params[:month]
  @day = params[:day]
  @birthday = Time.new(2019,@month, @date)
  @time_now = Time.new
  @month_now = @time_now.month
  @day_now = @time_now.day
  @countdown_time = (@time_now - @birthday).in_days

  erb :happy_birthday_name

end
  run! if app_file == $0
end
