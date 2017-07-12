# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each {|item| print "#{item}*"}
puts "-----------------------------"

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----

def has_item?(list, item)
  list.each do|supply| 
    if supply.eql? item
      return true
    end
  end
  return false
end


puts "zombie_apocalypse_supplies has boots? #{has_item?(zombie_apocalypse_supplies, "boots")}"
puts "zombie_apocalypse_supplies has binoculars? #{has_item?(zombie_apocalypse_supplies,"binoculars")}"
puts "-----------------------------"

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----

zombie_apocalypse_supplies.each do |supply|
  if supply > supply[4]
    zombie_apocalypse_supplies.delete(supply) # #delete is destructive in Array
    #zombie_apocalypse_supplies.slice(zombie_apocalypse_supplies.index(supply)).#slice doesn't modify the original array
  end
end

p zombie_apocalypse_supplies
puts "-----------------------------"

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

p two_survivors_supplies = zombie_apocalypse_supplies | other_survivor_supplies
puts "-----------------------------"

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal, extinction_year|
  print "#{animal}-#{extinction_year} * "
end

puts "\n-----------------------------"

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----

extinct_animals.each do |animal, extinction_year|
  if extinction_year > 2000
    extinct_animals.delete(animal)# #delete is destructive in Hash
  end
end

p extinct_animals
puts "-----------------------------"

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----

extinct_animals.each do |animal, extinction_year|
  extinct_animals[animal] = extinction_year - 3
end

p extinct_animals
puts "-----------------------------"

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----

def is_extinct?(extinct_animals, possible_extinct_animal)
  extinct_animals.each_key do |animal|
    if possible_extinct_animal == animal
      return true
    end
  end
  return false
end

p is_extinct?(extinct_animals,"Andean Cat")
p is_extinct?(extinct_animals,"Dodo")
p is_extinct?(extinct_animals,"Saiga Antelope")
puts "-----------------------------"

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----

p extinct_animals.shift
