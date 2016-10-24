def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  students
end

#method to print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end


#method to print names under 12 characters (Exercise 8.3)
def print(students)
  students_by_length = students.select{|student| student[:name].length < 12 }
  students_by_length.each_with_index  do |student, index|
    puts "#{index + 1}) #{student[:name]} (#{student[:cohort].capitalize} cohort)"
  end
end

#method to print the footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#call the methods
students = input_students
print_header
print(students)
print_footer (students)

#note: Come back to Exercise 2 & 3
