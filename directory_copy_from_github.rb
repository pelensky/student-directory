  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  # create an empty array
  students = []

  # get the first name
  name = gets.chomp

  # while the name is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students"

  #get another name from the user
  name = gets.chomp
  end

  #return the array of students
  students

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

if students.length >= 1
print_header
print_students(students)
print_footer(students)
else
  puts "You have not yet added any students. Please add a student to see the list."
end