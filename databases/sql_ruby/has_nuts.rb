require 'sqlite3'

recipes_db = SQLite3::Database.new("recipes.db")
recipes_db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS recipe_list(
    id INTEGER PRIMARY KEY,
    recipe_name VARCHAR(255),
    has_nuts BOOLEAN
  )
SQL

recipes_db.execute(create_table_cmd)

def create_recipe(recipes_db, recipe_name, has_nuts)
  recipes_db.execute("INSERT INTO recipe_list (recipe_name, has_nuts) VALUES (?, ?)", [recipe_name, has_nuts])
end  

def print_table(recipes_db)
  recipes_db.execute("SELECT * FROM recipe_list").each  do |recipe|
    puts "#{recipe['recipe_name']} has nuts #{recipe['has_nuts']}"
  end
end

def boolean_maker(input)
  if input == "y"
     "true"
  elsif input == "n"
    "false"
  else
    nil
  end
end

def check_recipe(recipes_db, recipe_name)
   recipes_db.execute("SELECT * FROM recipe_list WHERE recipe_name = ?", [recipe_name])
end

#------------- DRIVER CODE ---------------



puts "what recipe you will like to suscribe" 
recipe_name = gets.chomp.capitalize

puts "That recipe has nuts? (Type 'y' or 'n'"
has_nuts = boolean_maker(gets.chomp.downcase)

create_recipe(recipes_db, recipe_name, has_nuts)
print_table(recipes_db)

puts "what recipe you will like to check"
output = check_recipe(recipes_db, gets.chomp.capitalize)

output.each do |recipe|
  puts "#{recipe['recipe_name']} has nuts #{recipe['has_nuts']}"
end