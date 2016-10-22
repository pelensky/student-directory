
# array of students
students = [
  ["Dr. Hannibal Lecter", :november],
  ["Darth Vader", :november],
  ["Nurse Ratched", :november],
  ["Michael Corleone",:november],
  ["Alex DeLarge", :november],
  ["The Wicked Witch of the West", :november],
  ["Terminator",:november],
  ["Freddy Krueger", :november],
  ["The Joker", :november],
  ["Joffrey Baratheon", :november],
  ["Norman Bates", :november]
]

#method to print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

#method to print the students names, one on each line
def print(students)
  students.each  do |student|
    puts "#{student[0]} (#{student[1].capitalize} cohort)"
  end
end

#method to print the footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#call the methods
print_header
print(students)
print_footer (students)
