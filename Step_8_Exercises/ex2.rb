def input_students
  puts "Please enter the names of the students"
  puts "To finish, hit return twice"
  students = []
  name = gets.chomp
   while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
   end
   students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def begining_with_letter(students)
  letter_students = []
  students.each do |student|
     position = student[:name]
    if position[0] == 'C' || position[0] == 'c'
      letter_students << student
    end
  end
  letter_students
end

def print(students)
  students.each_with_index do |students, index|
  puts "#{index + 1}. #{students[:name]} (#{students[:cohort]} cohort)"
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end


students = input_students
new_students_list = begining_with_letter(students)
print_header
print(new_students_list)
print_footer(students)
