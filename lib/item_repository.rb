class ItemRepository

  def create_items

    menu_csv = IO.readlines("./config/menu.csv")
    menu_csv.shift

    item_list = []
    menu_csv.each do |item|
      item_array = []
      item_array = item.split(',')
      item_list << Item.new(item_array[0],item_array[1])
    end
    item_list
  end

end