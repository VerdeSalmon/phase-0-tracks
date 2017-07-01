# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)
#means data base that store data in tables thata relate to each other, is how making useful the info for ruby

# require gems
#Does the ORM for us
require 'sqlite3'
#does fake names, fake ages, etc. It's necesary install it
require 'faker' 

# create SQLite3 database
#in terminal you do : sqlite3 somedatabase.db, but becouse already has require 'sqlite3', just do the next
# create a new data base and store in a variable
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true #

# learn about fancy string delimiters
#open quote <<-ANYTHING
create_table_cmd = <<-SQL 
#some string text
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL
#Closing quote ANYTHING

# create a kittens table (if it's not there already)
#to execute whatever is inside the previous quote marks
db.execute(create_table_cmd)
# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

