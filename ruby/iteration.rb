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

