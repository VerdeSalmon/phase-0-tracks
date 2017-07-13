#Pseudocode

# Release 0
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string into words
  # iterate through the list
    # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
  # key and value pair list

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add an item
  # set quantity 
# output:
  # update the list

# Method to remove an item from the list
# input: list, item name
# steps:
  # remove the item from the list
# output:
  # the list

# Method to update the quantity of an item
# input: list, item name, and quantity
# steps:
  # check IF item exist in the list
  # set the quantity
# output:
  # updated list

# Method to print a list and make it look pretty
# input: list
# steps:
  # iterate through the list
    # print the item name and the quantity
# output:
  # no output

# Release 1

DEFAULT_QUANTITY = 0

def create_list(items)
  key_item_list= items.split(" ")
  item_list = {}
  key_item_list.each do |key|
    item_list[key] = DEFAULT_QUANTITY
  end 
  print_list(item_list)
  item_list
end

def add_item(list, item, quantity = DEFAULT_QUANTITY)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item)
end

def update_quantity(list, item, quantity)
  add_item(list, item, quantity)
end

def print_list(list)
  list.each do |key, value|
    puts "#{key}: #{value}"
  end
end

# DRIVER CODE
#list = create_list("carrots apples cereal pizza")
#p add_item(list, "banana", 5)
#p list
#p remove_item(list, "banana")
#p update_quantity(list, "banana", 5)


# Release 2

list = create_list("bananas potatos")
p add_item(list, "lemonade", 2)
p add_item(list, "tomatoes", 3)
p add_item(list, "onions", 1)
p add_item(list, "ice cream", 4)
p remove_item(list, "lemonade")
update_quantity(list, "ice cream", 1)

print_list(list)











