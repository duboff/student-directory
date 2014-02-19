def print_header
  p "The students of my cohort at Makers Academy"
  p "-------------"
end

def print(students)
  n = 0
  while n < students.length
    puts "#{students[n][:name]}, #{students[n][:hobby]}, #{students[n][:country]} (#{students[n][:cohort]} cohort)"
    n += 1
  end

  # students.each do |student|
  #   p "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12
  # end
end

def print_footer(names)    
  p "Overall, we have #{names.length} great students"
end

def input_students
  p "Please enter the name, hobby and country of birth of each ofthe students"
  p "Use commas to separate names, hobbies and country of birth i.e. Michael, snowboarding, Russia."
  p 'Hit return to enter a new name'
  p "To finish, just hit return twice"
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
    p "Now we have #{students.length} students"
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

