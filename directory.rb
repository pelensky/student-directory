def input_students
  puts "Please enter the name of the first student \n>>".center(50)
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp

  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students".center(50)
    #get another name from the user
    name = gets.chomp
  end
  students
end

#method to print the header
def print_header
  puts "The students of Villains Academy".center(20)
  puts "-------------".center(20)
end

#center output
def print(students)
   students.each_with_index  do |student, index|
    puts "#{index + 1}) #{student[:name]} (#{student[:cohort].capitalize} cohort.".center(50)
  end
end

#method to print the footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

#call the methods
students = input_students
print_header
print(students)
print_footer (students)
