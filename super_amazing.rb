require 'sinatra'
require './lib/item_repository'
require './lib/item'

get '/' do
  erb :index
end

get '/items' do
  filter = params[:filter]
  all_items = ItemRepository.new.create_items
  @items = []
  if filter
    all_items.each do |item|
      @items << item if item.name.include?(filter)
    end
  else
    @items = all_items
  end
  erb :items
end

get '/items/new' do
  erb :new
end

post '/items' do
  name = params[:name]
  IO.write("./config/menu.csv", "\n#{name},#{IO.readlines("./config/menu.csv").length}", IO.read("./config/menu.csv").length)
  @items = ItemRepository.new.create_items

  erb :items
end