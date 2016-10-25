  @students = []
  @name = ""
  @cohort = ""
  @user_file = "students.csv"

def interactive_menu
  loop do
    print_menu
    choice = STDIN.gets.chomp
    puts "You have selected Option #{choice}. Running now."
    puts "----------"
    process(choice)

  end
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit #this will cause the program to terminate
  else
    puts "I don't know what you meant, try again."
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list"
  puts "4. Load the list"
  puts "9. Exit"
end

def input_students
  puts "Please enter the name of a student."
  puts "To finish, just hit return twice."
  get_students
  while !@name.empty? do
    add_students
  puts "Now we have #{@students.count} students"
get_students
  end
end

def get_students
  @name = STDIN.gets.chomp
end

def show_students
  if @students.length >= 1
    print_header
    print_students_list
    print_footer
  else
    puts "You have not yet added any students. Please add a student to see the list."
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)"
    end
end

def print_footer
  if @students.length == 1
    puts "Overall, we have 1 great student."
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

def ask_for_filename
  puts "Which file would you like run?"
  puts "Please input file name, including .csv"
  puts "If you do not know, use students.csv"
  @user_file = STDIN.gets.chomp.downcase
end

def save_students
  # open the file for writing
  ask_for_filename
  file = File.open(@user_file, "w")
  #iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  ask_for_filename
  file = File.open(@user_file, "r")
  file.readlines.each do |line|
    @name, @cohort = line.chomp.split(',')
    add_students
  end
  file.close
end

def add_students
  @students << {name: @name, cohort: :november}
end


def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename) #if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exists
    load_students(filename = "students.csv")
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

try_load_students
interactive_menu
