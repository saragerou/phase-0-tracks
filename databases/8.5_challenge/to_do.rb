# Create to-do list
# Ability to create new instances
# Ability to mark a task as done
# Keep track of date?

require 'sqlite3'
require 'date'

# create SQLite3 database
db = SQLite3::Database.new("to_do.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_to_do_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    due_date DATE,
    completed BOOLEAN
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_to_do_table_cmd)

# add a test
# db.execute("INSERT INTO tasks (task, due_date, completed) VALUES ('pay bills again', '9/4/17', 'false')")

def create_task (db, task, due_date, completed)
  db.execute("INSERT INTO tasks (task, due_date, completed) VALUES (?, ?, ?)", [task, due_date, completed])
end

def task_completed (db, task)
    db.execute("UPDATE tasks SET completed = 'true' WHERE task = ?", [task])
    puts "Okay! That task has been set to completed!"  
end

def print_current_tasks (db, task, due_date)
  print_tasks = db.execute("SELECT tasks.task, tasks.due_date FROM tasks WHERE completed = 'false';")
  print_tasks.each do |task|
  puts "#{task['task']} is due to be completed on #{task['due_date']}."
  end
end

def print_old_tasks (db, task, due_date)
  print_tasks = db.execute("SELECT tasks.task, tasks.due_date FROM tasks WHERE completed = 'true';")
  print_tasks.each do |task|
  puts "#{task['task']} was due to be completed on #{task['due_date']}."
  end
end

# DRIVER CODE

puts "You've got some stuff to do, I'm sure of it. Would you like to add something new to the list? (y/n)"
answer = gets.chomp
if answer == "y"
  puts "What's the task?"
  task = gets.chomp
  puts "When is your due date? (Use format YYYY-MM-DD)"
  due_date = gets.chomp
  completed = "false"
  create_task(db, task, due_date, completed)
  puts "Cool! That's been added to the list."
else
  puts "Okay! Seems like you have it all under control!"
end

puts "So what's next? Do you want to view your current To Do List? (y/n)"
answer = gets.chomp
if answer == "y"
  print_current_tasks(db, task, due_date)
else
  puts "Okie-dokie! Later!"
end

puts "Did you finish a task? (y/n)"
answer = gets.chomp
if answer == "y"
  puts "Which task should we update to completed?"
  task = gets.chomp
  task_completed(db, task)
else
  puts "Then you'd better get busy!"
end

puts "Do you want to look at all of the tasks you've already accomplished?"
answer = gets.chomp
if answer == "y"
  print_old_tasks(db, task, due_date)
else
  puts "Have a great day!"
end