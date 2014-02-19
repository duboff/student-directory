def print_header
  puts "The students of my cohort at Makers Academy".center(80)
  puts "-".center(80, '-')
end

def print(students)
  n = 0
  while n < students.length
    puts "#{students[n][:name].center(20)} #{students[n][:hobby].center(12)} #{students[n][:country].center(12)} (#{students[n][:cohort]} cohort)"
    n += 1
  end

  # students.each do |student|
  #   p "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12
  # end
end

def print_footer(names)    
  puts ''
  puts "Overall, we have #{names.length} great students"
end

def input_students
  puts "Please enter the name, hobby and country of birth of each ofthe students"
  puts "Use commas to separate names, hobbies and country of birth i.e. Michael, snowboarding, Russia."
  puts 'Hit return to enter a new name'
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  student = gets.chomp.split(', ')

  # while the name is not empty, repeat this code
  while !student.empty? do    
    # add the student hash to the array
    students << {:name => student[0],
                  :hobby => student [1],
                  :country => student [2],
                  :cohort => :february}  
    puts "Now we have #{students.length} students"
    # get another name from the user
    student = gets.chomp.split(', ')
  end
  # return the array of students
  students
end

students = input_students
print_header
print(students)
print_footer(students)
