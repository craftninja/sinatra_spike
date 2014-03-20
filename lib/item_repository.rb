class ItemRepository

  def create_items
    item_list = [
                  Item.new("Sally's delicious Special Spaghetti"),
                  Item.new("Will's delectable Wild Wings"),
                  Item.new("Bob's delightful Buffalo Burgers"),
                ]
    item_list
  end

end