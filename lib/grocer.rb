require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  hash_to_return = {}
  
  collection.each do |element|
    element.each do |key, value|
      if value == name
        hash_to_return = element
      end
    end
  end
  if hash_to_return == {}
    hash_to_return = nil
  end
  hash_to_return

end

def consolidate_cart(cart)

  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  consolidated_cart = []
  count_hash = { :count => 0 }
  count_added_hash = {}
  
  cart.each do |element|
    count_added_hash = element.merge(count_hash)
    if find_item_by_name_in_collection(count_added_hash[:item], cart) 
    consolidated_cart << count_added_hash
  end

      

end


  