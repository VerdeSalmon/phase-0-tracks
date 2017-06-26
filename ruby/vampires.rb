# VAMPIRE DETECTION PROGRAM


# ------------ FUNCTIONAL CODE -------------

def check_name(name_input)
	name = name_input == "Drake Cula" || name_input == "Tu Fang"
end


def check_age(age_input)

		age = age_input.split(',').map(&:to_i)

		if 0 < age[0] && age[0] < 100 && (Time.new.year - 100) < age[1] && (Time.new.year - age[1]) == age[0]
			age = true
		else
			age = false
		end
end


def check_garlic(eat_garlic)
	eat_garlic == "y"? eat_garlic =true : eat_garlic =false
end


def check_allergy
	allergy = ""
	while allergy != "sunshine" && allergy != "done"
		puts "Do you have any allergy? Please enter one allergy at the time and type 'done' when you finish."
		allergy = gets.chomp.downcase
	end
end


def check_health_insurance(health_insurance)
	health_insurance == "y"? health_insurance =true : health_insurance =false
end


def interview
	puts "What is your name?"
	name = check_name(gets.chomp)	
	
	puts "What is your age? What year were you born? (type age and year. example '34,1982'"
	age = check_age(gets.chomp)
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)" 
	eat_garlic = check_garlic(gets.chomp)	

	puts "Would you like to enroll in the company’s health insurance?(y/n)"
	health_insurance = check_health_insurance(gets.chomp)

	check_allergy


	if !name && age && (eat_garlic||health_insurance)&& check_allergy != "sunshine" 
		results = "Probably not a vampire."	
	elsif !age && eat_garlic || !age && health_insurance
		results = "Probably a vampire."
	elsif !age && !eat_garlic && !health_insurance
		results = "Almost certainly a vampire."
	elsif name
		results = "Definitely a vampire."
	elsif check_allergy == "sunshine"
		results = "Probably a vampire."
	else
		results = "Results inconclusive."
	end 

	print_results(results)

end


def print_results(results)
	puts "\nEmployee result: #{results}"
end



# ----------------- DRIVE CODE ------------------------


puts "How many employees you will be processed?"
employees_to_process = gets.chomp.to_i
	
employees_to_process.times do|x|
	puts "\nInterview to process number: #{x+1}"
	interview
end


puts "\nActually, never mind! What do these questions have to do with anything? Let's all be friends."




