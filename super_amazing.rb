require 'sinatra'
require './lib/item_repository'
require './lib/item'

get '/' do
  erb :index
end

get '/items/' do
  @items = ItemRepository.new.create_items
  erb :items
end
