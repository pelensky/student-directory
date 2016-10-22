
# array of students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

#method to print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

#method to print the students names, one on each line
def print(names)
  puts names.each {|student| puts student}
end

#method to print the footer
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

#call the methods
print_header
print(students)
print_footer (students)
