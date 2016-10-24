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


#method to print names starting with a specific letter (Exercise 8.2)
def print(students)
  puts "Which letter would you like to search by?"
  letter = gets.chomp.upcase
  students_by_letter = students.select{|student| student[:name][0] == letter }
  students_by_letter.each_with_index  do |student, index|
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
