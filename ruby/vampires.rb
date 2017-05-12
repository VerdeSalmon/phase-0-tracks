puts "How many employees you will be processed?"
num_empl = gets.chomp.to_i 


i=0
until i == num_empl

	puts "What is your name?"
	name = gets.chomp
	name == "Drake Cula" || name == "Tu Fang"? name = true : name = false
	
	puts "What is your age? What year were you born?"
	age = gets.chomp.split(' ').map(&:to_i)
	0 < age[0] && age[0] < 100? age[0] = true : age[0] =false
	(Time.new.year - 100) < age[1] && age[1] < Time.new.year ? age[1] =true : age[1] =false
	age = age[0] && age[1]
	puts age

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
	

	
	if !name && age && (garlic||h_insur)&& allergy != "sunshine" ; puts "Probably not a vampire.";
		
	elsif !age && garlic || !age && h_insur; puts "Probably a vampire.";

	elsif !age && !garlic && !h_insur; puts "Almost certainly a vampire.";

	elsif name; puts "Definitely a vampire.";

	elsif allergy == "sunshine"; puts "Probably a vampire.";
	
	else; "Results inconclusive.";end 
	
i += 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."




