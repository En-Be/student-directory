
# first we make a list of students names to use if not inputting them

students = [
  {name: "Dr Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratchet", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex Delarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Kruger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
  ]

# allow the user to create their own list if they want

def input_students
  puts "Please enter the names of the students"
  puts "To finish, enter an empty name"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

# the following methods make up the filtering and printing process (imperative)

def print_header(selection_message, letter_or_number)
  puts ""
  header = {
    "full" => "(all those enrolled)",
    "initial" => "(whose name begins with #{letter_or_number})",
    "length" => "(whose name has less than #{letter_or_number} letters)"
  }
  puts "The students of Villains Academy"
  puts header[selection_message]
  puts "-----------------------------"
end

=begin # this is just with an each loop instead
def select_students_with_initial(students, initial)
  edited_list = []
  students.each do |student|
    name_letters = student[:name].split ""
    if name_letters[0] == initial
      edited_list << student
    end
  end
  edited_list
end
=end
def select_students_with_initial(students, initial)
  edited_list = []
  l = students.length
  c = 0
  until c == l do
    name_letters = students[c][:name].split ""
    if name_letters[0] == initial
      edited_list << students[c]
    end
    c += 1
  end
  edited_list
end

=begin #  this is just with an each loop instead
def select_students_with_short_name(students, number_of_letters)
  edited_list = []
  students.each do |student|
    if student[:name].length < number_of_letters
      edited_list << student
    end
  end
  edited_list
end
=end
def select_students_with_short_name(students, number_of_letters)
  edited_list = []
  l = students.length
  c = 0
  until c == l do
    if students[c][:name].length < number_of_letters
      edited_list << students[c]
    end
    c += 1
  end
  edited_list
end

=begin # this is just with an each loop instead
def print_list(students)
  students.each_with_index do |student, index|
    puts "#{index + 1} - #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
=end
def print_list(students)
  l = students.length
  c = 0
  until c == l do
    puts "#{c + 1} - #{students[c][:name]} (#{students[c][:cohort]} cohort)"
    c += 1
  end
end

def print_footer(students)
  puts  "-----------------------------"
# then we print the total number of students
  puts "Overall, we have #{students.count} great students."
  puts ""
end

# the following methods collect the above to call them based on input (declarative)

def print_full_list(students)
  print_header("full", nil)
  print_list(students)
  print_footer(students)
end

def print_filtered_by_initial(students)
  print_header("initial", "D")
  filtered_list = select_students_with_initial(students, "D")
  print_list(filtered_list)
  print_footer(filtered_list)
end

def print_filtered_by_name_length(students)
  print_header("length", 12)
  filtered_list = select_students_with_short_name(students, 12)
  print_list(filtered_list)
  print_footer(filtered_list)
end

# the following methods will be chosen from a menu

#students = input_students

print_full_list(students)
print_filtered_by_initial(students)
print_filtered_by_name_length(students)