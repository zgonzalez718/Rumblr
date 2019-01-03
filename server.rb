require 'sinatra'
require "sinatra/reloader"

# Run this script with `bundle exec ruby app.rb`
require 'active_record'

#require model classes
require './models/user.rb'
require './models/post.rb'

# Use `binding.pry` anywhere in this script for easy debugging
require 'pry'
require 'csv'

# Connect to a sqlite3 database
# If you feel like you need to reset it, simply delete the file sqlite makes
if ENV['DATABASE_URL']
  require 'pg'
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
else
  require 'sqlite3'
  ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
    database: 'db/development.db'
)
end

register Sinatra::Reloader
enable :sessions

get '/' do
  if session[:user_id]
    @user = User.find(session[:user_id])
    redirect '/homepage'
  else 
    erb :nope
  end
end

get '/login' do 
  erb :login 
end

post '/user/homepage' do
  user = User.find_by(email: params["email"], password: params["password"])
  puts ">>>>>>>>>>>>"
  puts user.inspect
  puts params
  puts ">>>>>>>>>>>>"
  if user
    session[:user_id] = user.id
    redirect '/'
  else
    erb :nope
  end
end


get '/homepage' do
  erb :homepage
end

get '/signUp' do
  erb :signUp
end

get '/profileInfo' do
  erb :profileInfo
end

get '/cancelAcct' do 
  erb :cancelAcct 
end

post '/signUp' do
user_instance = User.create(
      f_name: params["f_name"],
      l_name: params["l_name"],
      email: params["email"],
      password: params["password"]
    )
    puts user_instance 
    redirect '/homepage'
end

get '/postPage' do
  erb :postPage
end

post '/postPage' do
  post_instance = Post.create(
        title: params["title"],
        content: params["content"],
        user_id: (session[:user_id])
      )
      puts post_instance 
    redirect '/homepage'
  end

  get '/user/delete' do
    User.find(session[:user_id]).destroy
    redirect '/login'
  end