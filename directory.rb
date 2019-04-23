# first we print a list of students names
students = [
  "Dr Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratchet",
  "Michael Corleone",
  "Alex Delarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Kruger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
  ]

def print_header
  puts  "The students of Villains Academy"
  puts  "-----------------------------"
end

def print_list(students)
  students.each do |student|
    puts student 
  end
end

def print_footer(students)
# then we print the total number of students
  puts "Overall, we have #{students.count} great students."
end

print_header
print_list(students)
print_footer(students)