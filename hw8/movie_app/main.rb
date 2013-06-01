require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'


get '/' do 
	erb :home 
end

get '/display' do
	erb :display
end


get '/new' do
	erb :new
end

post '/add' do 
	title = params[:title]
	description = params[:description]
	url = params[:url]
	genre = params[:genre]
	sql = "insert into videos values (title, description, url, genre), (#{params[:title]}, #{params[:description]}, #{url[:url]}, #{genre[:genre]})"
	run_sql(sql)
	redirect '/'
end 

get '/edit' do
	erb :edit
end 


def run_sql(sql)
	conn = PG.connect(dbname: "video_store", host: 'localhost')
	result = conn.exec(sql)
	conn.close
	result
end
