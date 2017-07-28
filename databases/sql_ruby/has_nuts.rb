require 'sqlite3'

recipes_db = SQLite3::Database.new("recipes.db")
recipes_db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS food(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    has_nuts BOOLEAN
  )
SQL

food_db.execute(create_table_cmd)