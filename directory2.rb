# Need date module to get a list of possible month names
require 'Date'

def print_header
  puts "The students of my cohort at Makers Academy".center(80)
  puts "-".center(80, '-')
end

def print(students)
  # This is an easier method:
  # students.sort_by {|student| possible_months.index(student[:cohort])}.each do |student|
  #   puts "#{students[n][:name].center(20)} (#{students[n][:cohort]} cohort)"
  # end
  cohorts = students.map { |student| student[:cohort] }
  cohorts.each do |cohort|
    students.select{|student| student[:cohort] == cohort}.each do |student|
      puts "#{student[:name].center(20)} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(names)    
  puts ''
  puts "Overall, we have #{names.length} great students"
end

def input_students
  # getting a string with all the month names and getting the 12 names starting with element 1
  possible_months = Date::MONTHNAMES.slice(1,12).map! {|x| x.downcase}

  puts "Please enter the name and cohort of each ofthe students"
  puts "Use 'name, cohort'. February assumed by default"
  puts 'Hit return to enter a new name'
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  student = gets.chomp.split(', ')
  
  # while the name is not empty, repeat this code
  while student[0] do
    #default value for students is assigned if cohort is not entered
    student[1] = :february if !student[1]
    if !possible_months.include?(student[1])
      puts "I think you made a typo in month name. Please re-enter the cohort month"
      student[1] =  gets.strip("\r\n")
    end
    # add the student hash to the array
    students << {:name => student[0],
                  # :hobby => student[1],
                  # :country => student[2],
                  #converting cohort to symbol
                  :cohort => student[1].to_sym}  
    puts "Now we have #{students.length} student#{"s" if students.length != 1}"
    puts "Please enter the next student (name, cohort) or return to stop"
    # get another name from the user
    # and split strint into array of name and cohort
    student = gets.chomp.split(', ')
  end
  # return the array of students
  students
end

students = input_students
print_header
print(students)
print_footer(students)
