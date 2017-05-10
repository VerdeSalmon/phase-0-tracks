
puts "What is your name?"
name = gets.chomp

#puts "What year were you born?" 
#b_year = gets.chomp.to_i

puts "What is your age?"
age = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)" 
garlic = gets.chomp
garlic == "y"?   garlic =true : garlic =false

puts "Would you like to enroll in the company’s health insurance?(y/n)"
h_insur = gets.chomp
h_insur == "y"? h_insur =true : h_insur =false


test2 =[name, age, garlic, h_insur]
#puts "Probably not a vampire." if age <= 100 && (garlic || h_insur)
#puts "Probably a vampire."

#age < 100 && (garlic||h_insur)? (puts "Probably not a vampire."):(puts "Probably a vampire.")
#age >100 && garlic && h_insur ? "Almost certainly a vampire."
#puts "Definitely a vampire." if name == "Drake Cula" || "Tu Fang"
#if age >100 && garlic && h_insur && name != "Drake Cula" || "Tu Fang"; puts "Results inconclusive."

case test2
when age < 100 && (garlic||h_insur)
	puts "Probably not a vampire."
when age >100 && (garlic||h_insur)
	puts "Probably a vampire."
when age >100 && garlic && h_insur
	puts "Almost certainly a vampire."
when name == "Drake Cula" || "Tu Fang"
	puts "Almost certainly a vampire."
end


=begin
If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
Otherwise, print “Results inconclusive.”
=end

