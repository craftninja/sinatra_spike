require 'sinatra'
require './lib/item_repository'
require './lib/item'

get '/' do
  erb :index
end

get '/items/' do
  erb :items
end
