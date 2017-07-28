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

def boolean_maker(input)
  if input == "y"
     "true"
  elsif input == "n"
    "false"
  else
    nil
  end
end



#------------- DRIVER CODE ---------------



puts "what recipe you will like to suscribe" 
recipe_name = gets.chomp.capitalize

puts "That recipe has nuts? (Type 'y' or 'n'"
has_nuts = boolean_maker(gets.chomp.downcase)

create_recipe(recipes_db, recipe_name, has_nuts)