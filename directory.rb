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

puts  "The students of Villains Academy"
puts  "-----------------------------"
students.each do |student|
 puts student 
end

# then we print the total number of students
puts "Overall, we have #{students.count} great students."