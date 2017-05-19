def drinks
	puts "Margarita"
	2.times {yield}
	puts " "
end

drinks{puts "Tequila Sunrise"}


def beers
	puts "India Pale Ale"
	yield ("Peanut butter stout")
	yield ("Juniper Saison")
	puts " "
end

beers{ |name1| puts "I like #{name1}"}
beers{ |name1| puts "I love #{name1}"}



#Release 1


footbal_players = ["Emily Gant", "Tasia Kerbs","Carman Fallon","Eunice Duhon","Minnie Blakeman","Reed Rahman","Randy Riccio","Delilah Dieterich","Fermin Finch"]

sport_teams = {
	basketball: "Hares",
	baseball: "Groundhogs",
	football: "Jaguars",
	swimming: "Sharks",
	wakeboarding: "Dolphins",
}

p footbal_players
p sport_teams


#Use .each
footbal_players.each_with_index do |player,index|
	puts "#{index+1}. #{player}"
end
puts " " 

count =1
sport_teams.each do |sport,team|
	puts "#{count}. #{sport}: #{team}"
	count +=1
end
puts " "

p footbal_players
p sport_teams


#Use .map!
footbal_players.map!.with_index do |player,index|
	puts "#{index+1}. #{player}"
end
puts " " 

p footbal_players



#Release 2



p numbers_list = [1,2,3,4,5,6,7,8,9,10]
p pairing_list = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7}

#Method that iterates through the items, deleting any that meet a certain condition.


puts ".reject"  
p numbers_list.reject { |number| number < 6 }#new array 
p numbers_list

p pairing_list.reject {|key, value| key > :d} #new hash
p pairing_list

puts ".delete_if" 
p numbers_list.delete_if {|number| number < 6} #modify array
p numbers_list
 
p pairing_list.delete_if {|key, value| key > :d} #modify hash
p pairing_list


#Method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
numbers_list = [1,2,3,4,5,6,7,8,9,10]
pairing_list = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7}

puts ".select" 
p numbers_list.select {|number| number < 5 } #new array
p numbers_list

p pairing_list.select {|key, value| key < :c} #new hash
p pairing_list


#Method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

puts ".keep_if"
p numbers_list.keep_if {|number| number < 5 }  #modify array
p numbers_list

p pairing_list.keep_if {|key,value| key > :d}  #modify hash
p pairing_list

#Method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
numbers_list = [1,2,3,4,5,6,7,8,9,10]

puts ".drop_while" #new array
p numbers_list.drop_while {|number| number < 7}
p numbers_list
