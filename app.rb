
require 'sinatra'
require 'shotgun'
get '/' do
  "Hello!"
end

get '/secret' do
  'This is not a secret page'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Alpha", "Viking"].sample
  erb(:index)    
end

get '/named-cat' do
  @name = params[:name]
  erb :index
end
