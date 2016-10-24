  def interactive_menu
  students = []

  loop do
    #1) print the menu and ask the use what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    #2) read the input and save it into a variable
    selection = gets.chomp
    #3) do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      if students.length >= 1
      print_header
      print_students(students)
      print_footer(students)
      else
        puts "You have not yet added any students. Please add a student to see the list."
      end
    when "9"
      exit #this will cause the program to terminate
    else
      puts "I don't know what you meant, try again."
    end
  end
end

def input_students
  students = []
  puts "Please enter a name."
  name = gets.chomp
  while !name.empty? do
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students"
  name = gets.chomp
  end
  students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print_students(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)"
    end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

interactive_menu
