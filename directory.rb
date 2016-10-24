  @students = []

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students(@students)
  when "9"
    exit #this will cause the program to terminate
  else
    puts "I don't know what you meant, try again."
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def input_students
  puts "Please enter a name."
  name = gets.chomp
  while !name.empty? do
  @students << {name: name, cohort: :november}
  puts "Now we have #{@students.count} students"
  name = gets.chomp
  end
end

def show_students(students)
  if students.length >= 1
    print_header
    print_students_list(@students)
    print_footer(@students)
  else
    puts "You have not yet added any students. Please add a student to see the list."
  end
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print_students_list(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)"
    end
end

def print_footer(students)
  if students.length == 1
    puts "Overall, we have 1 great student."
  else
    puts "Overall, we have #{students.count} great students"
  end
end

interactive_menu
