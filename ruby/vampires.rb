puts "How many employees you will be processed?"
num_empl = gets.chomp.to_i 


i=0
until i == num_empl

	puts "What is your name?"
	name = gets.chomp
	name == "Drake Cula" || name == "Tu Fang"? name = true : name = false
	
	puts "What is your age? What year were you born?"
	age = gets.chomp.to_i
	0 < age && age < 100? age =true : age =false
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)" 
	garlic = gets.chomp
	garlic == "y"? garlic =true : garlic =false
	
	puts "Would you like to enroll in the company’s health insurance?(y/n)"
	h_insur = gets.chomp
	h_insur == "y"? h_insur =true : h_insur =false

	x = ""
	while x != "sunshine" && x != "done"
		puts "Do you have any allergy? Please type one at the time and type done when you finish."
		allergy = gets.chomp.downcase
		x = allergy
	end
	

	
	if !name && age && (garlic||h_insur)&& allergy != "sunshine" ; puts "Probably not a vampire."; #age true, garlic good or insurance good
		
	elsif !age && garlic || !age && h_insur; puts "Probably a vampire.";#age false , garlic no or insurance no
		
	elsif !age && !garlic && !h_insur; puts "Almost certainly a vampire.";#age false, garlic no and insurance no
		
	elsif name; puts "Definitely a vampire.";

	elsif allergy == "sunshine"; puts "Probably a vampire.";
	
	else; "Results inconclusive.";end 
	
i += 1

	
	

end








=begin
If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
Otherwise, print “Results inconclusive.”
=end




