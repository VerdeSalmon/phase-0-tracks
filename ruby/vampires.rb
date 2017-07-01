# VAMPIRE DETECTION PROGRAM
# This program does not have error handling yet, so any typo will be interpreted as 'nil == false'


# ------------ METHOD DECLARATION CODE -------------


def valid_name?(name)
  vampire_names = ['Drake Cula', 'Tu Fang']
  vampire_names.include?(name)
end


def valid_age?(age_input)

	age = age_input.split(',').map(&:to_i)

	((0 < age[0]) && (age[0] < 100) && ((Time.new.year - 100) < age[1] ) && ((Time.new.year - age[1]) == age[0]))
	
end


def eat_garlic?(eat_garlic)
	eat_garlic == "y"
end


def want_health_insurance?(health_insurance)	
	health_insurance == "y"
end


def no_sunshine_allergy?
	#In case the user need a list of the employee allergies
	allergy = []
	vampire_allergies = ["sunshine", "done"]
		
	while (vampire_allergies & allergy).empty?
		puts "Allergy: "
		allergy << gets.chomp.downcase
	end
	
	allergy.delete("done")
	(vampire_allergies & allergy).empty?
end


def interview
	puts "What is your name?"
	name = valid_name?(gets.chomp)	
	
	puts "What will be your age at the end of the this year? What year were you born? (type age and year. example '35,1982'"
	age = valid_age?(gets.chomp)
	#p age
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)" 
	eat_garlic = eat_garlic?(gets.chomp)	
	#p eat_garlic

	puts "Would you like to enroll in the company’s health insurance?(y/n)"
	health_insurance = want_health_insurance?(gets.chomp)
	#p health_insurance
	
	puts "Do you have any allergy? Please enter one allergy at the time and type 'done' when you finish."
	allergy = no_sunshine_allergy?
	#p allergy

	if !name && age && (eat_garlic||health_insurance)&& allergy
		results = "Probably not a vampire."	
	elsif !age && eat_garlic || !age && health_insurance
		results = "Probably a vampire."
	elsif !age && !eat_garlic && !health_insurance
		results = "Almost certainly a vampire."
	elsif name
		results = "Definitely a vampire."
	elsif !allergy
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




