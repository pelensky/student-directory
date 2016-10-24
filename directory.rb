def input_students
  puts "Please enter the name of the first student."
  puts "Type 'quit' when you are finished."
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #get the cohort
  puts "What cohort are they in?"
  cohort = gets.chomp
    if cohort.empty?
      cohort = "November"
    else
      cohort = cohort
    end

  # while the name is not empty, repeat this code
  while true do
    # add the student hash to the array
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    #get another name from the user
    puts "Please enter the name of the next student."
    name = gets.chomp
    #break if the user writes quit
    break if name.downcase == "quit"
    puts "What cohort are they in?"
    cohort = gets.chomp
    #assign the value of November if blank
      if cohort.empty?
        cohort = "November"
        #validate the month
      elsif cohort == "January" || cohort == "February" || cohort == "March" || cohort == "April" || cohort == "May" || cohort == "June" || cohort == "July" || cohort == "August" || cohort == "September" || cohort == "October" || cohort == "November" || cohort == "December"
        cohort = cohort
      else
        #ask them to re-enter the value if incorrect
        puts "Was that spelled correctly? Please enter the cohort again."
        cohort = gets.chomp
      end
  end
  students
end

#method to print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------".center(20)
end

# print by cohort
def print(students)
 students.sort_by  do |student|
   student[:cohort]
  puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)."
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
