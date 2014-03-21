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