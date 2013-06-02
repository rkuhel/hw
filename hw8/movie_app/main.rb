require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

##############################
## home display add and new ##
##############################

get '/' do 
	erb :home 
end

get '/display' do
	sql = "select * from videos"
	@rows = run_sql(sql)
	erb :display
end


get '/new' do
	erb :new
end

post '/add' do 
	sql = "insert into videos (title, description, url, genre) values ( '#{params['title']}', '#{params['description']}', '#{params['url']}', '#{params['genre']}' )"
	run_sql(sql)
	redirect to('/display')
end 

###################
## edit & delete ##
###################

get '/edit/:id' do 
	sql = "select * from videos where id=#{params[:id]}"
	@row = run_sql(sql).first
	erb :edit
end

post '/update/:id' do 
	sql = "update videos set title='#{params['title']}', description='#{params['description']}', url='#{params['url']}', genre='#{params['genre']}' where id= #{params['id']}"
	@row = run_sql(sql).first
	redirect to("/display")
end

get '/delete/:id' do  
	sql = "delete * from videos where id=#{params[:id]}"
	run_sql(sql)
	redirect to('/display')
end

get '/video/:id/delete' do 
	sql = "delete from videos where id=#{params[:id]}"
	run_sql(sql)
	redirect to('/display')
end

##########################
## methods to run sql ###
#########################

def run_sql(sql)
	conn = PG.connect(dbname: "video_store", host: 'localhost')
	result = conn.exec(sql)
	conn.close
	result 
end
