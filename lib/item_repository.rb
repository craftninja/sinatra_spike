class ItemRepository

  def create_items
    item_list = [
                  Item.new("Sally's delicious Special Spaghetti", 1),
                  Item.new("Will's delectable Wild Wings", 2),
                  Item.new("Bob's delightful Buffalo Burgers", 3),
                ]
    item_list
  end

end