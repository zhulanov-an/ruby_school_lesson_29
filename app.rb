require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:./database/barbershop.db"


#examle access to db
# def get_db 
#   db = SQLite3::Database.new './database/leprosorium.sqlite'
#   db.results_as_hash = true
#   db
# end

#example set variable before POST or GET request
# before do 
#   @db = get_db
# end

#example congfiure db after reload page
# configure do 
#   get_db.execute 'CREATE TABLE IF NOT EXISTS "posts"
#   (
#   "id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL UNIQUE,
#   "created_at" DATETIME NOT NULL,
#   "name_post" TEXT NOT NULL,
#   "name_author" TEXT NOT NULL,
#   "content" TEXT NOT NULL 
#   )'

#   get_db.execute 'CREATE TABLE IF NOT EXISTS "comments"
#   (
#   "id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL UNIQUE,
#   "created_at" DATETIME NOT NULL,
#   "content" TEXT NOT NULL ,
#   "name_author" TEXT NOT NULL ,
#   "fk_post" INTEGER NOT NULL
#   )'
# end

get '/' do
	erb 'Hello, i`m clean project'
end