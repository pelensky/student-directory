def input_students
  puts "Please enter the name of the first student \n>>"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  puts "What hobbies do they have? \n>>"
  hobbies = gets.chomp
  puts "What is their country of birth? \n>>"
  country = gets.chomp
  puts "How tall are they in cm? \n>> "
  height = gets.chomp
  puts "How much do they weigh in kg? \n>>"
  weight = gets.chomp

  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: hobbies, country: country, height: height, weight: weight}
    puts "Now we have #{students.count} students"
    #get another name from the user
    puts "Please enter the next of the students \n>>"
    name = gets.chomp
    puts "What hobbies do they have? \n>>"
    hobbies = gets.chomp
    puts "What is their country of birth? \n>>"
    country = gets.chomp
    puts "How tall are they in cm? \n>> "
    height = gets.chomp
    puts "How much do they weigh in kg? \n>>"
    weight = gets.chomp
  end
  students
end

#method to print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end


def print(students)
  students.each_with_index  do |student, index|
    puts "#{index + 1}) #{student[:name]} (#{student[:cohort].capitalize} cohort, from #{student[:country]}, who's hobbies are #{student[:hobbies]}. Finally, they are #{student[:height]} cm tall and weight #{student[:weight]} kgs."
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
