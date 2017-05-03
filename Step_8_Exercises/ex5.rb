

def input_students
  puts "Please enter the name of the student: "
  name = gets.chomp
  puts "Please enter height: "
  height = gets.chomp
  puts "Please enter place of birth: "
  birth_place = gets.chomp
  puts "Please enter hobbies: "
  hobbies = gets.chomp
  puts "To finish, hit return twice"
  students = []
   while !name.empty? do
    students << {name: name, height: height, birth_place: birth_place, hobbies: hobbies, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
   end
   students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(students)
  students.each do |students|
  puts "Name: #{students[:name]}, Height: #{students[:height]}, Place of Birth: #{students[:birth_place]}, Hobbies: #{students[:hobbies]} Cohort: #{students[:cohort]}"
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
