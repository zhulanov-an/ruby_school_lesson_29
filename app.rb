require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:./database/barbershop.db"

class Client < ActiveRecord::Base

end

class Barber < ActiveRecord::Base

end

get '/' do
	@barbers = Barber.all
	erb :index
end