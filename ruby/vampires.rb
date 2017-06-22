puts "How many employees you will be processed?"
employees_to_process = gets.chomp.to_i 


employees_to_process.times do 


	puts "What is your name?"
	name_input = gets.chomp
	name = name_input == "Drake Cula" || name_input == "Tu Fang"

	
	puts "What is your age? What year were you born? (type age and year. example '34,1982'"
	age = gets.chomp.split(',').map(&:to_i)

		if 0 < age[0] && age[0] < 100 && (Time.new.year - 100) < age[1]
			age = true
		else
			age = false
		end
	

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)" 
	garlic = gets.chomp
	garlic == "y"? garlic =true : garlic =false
	
	puts "Would you like to enroll in the company’s health insurance?(y/n)"
	health_insurance = gets.chomp
	health_insurance == "y"? health_insurance =true : health_insurance =false

	allergy = ""
	while allergy != "sunshine" && allergy != "done"
		puts "Do you have any allergy? Please type one at the time and type 'done' when you finish."
		allergy = gets.chomp.downcase
	end
	

	
	if !name && age && (garlic||health_insurance)&& allergy != "sunshine" 
		puts "Probably not a vampire."	
	elsif !age && garlic || !age && health_insurance
		puts "Probably a vampire."
	elsif !age && !garlic && !health_insurance
		puts "Almost certainly a vampire."
	elsif name
		puts "Definitely a vampire."
	elsif allergy == "sunshine"
		puts "Probably a vampire."
	else
		"Results inconclusive."
	end 

end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."




