# Need date module to get a list of possible month names
require 'Date'

@students = []
@possible_months = Date::MONTHNAMES.slice(1,12).map! {|x| x.downcase}

def print_header
  puts "The students of my cohort at Makers Academy".center(80)
  puts "-".center(80, '-')
end

def show_students
  cohorts = @students.map { |student| student[:cohort] }
  cohorts.each do |cohort|
    @students.select{|student| student[:cohort] == cohort}.each do |student|
      puts "#{student[:name].center(20)} (#{student[:cohort]} cohort)"
    end
  end
end


def print_footer   
  puts ''
  puts "Overall, we have #{@students.length} great students"
end

def check_typo(student)
  while !@possible_months.include?(student[1])
    puts "Please re-enter the cohort month"
    student[1] =  STDIN.gets.chomp
  end
  student
end

def insert_default_cohort(student)
  student[1] = :february if !student[1] # default value for when no cohort entered
  student
end

def add_student(name, cohort)
  # add the student hash to the array
  @students << {:name => name, :cohort => cohort.to_sym} 
end

def input_message
  puts "Please enter the name and cohort of each ofthe students"
  puts "Use 'name, cohort'. February assumed by default"
  puts 'Hit return to enter a new name'
  puts "To finish, just hit return twice"
end

def input_students
  input_message
  loop do
    student = STDIN.gets.chomp.split(', ')
    break if !student[0] # if user just presses enter we want the loop to break
    student = check_typo(insert_default_cohort(student))
    add_student(student[0], student[1])
    puts "Now we have #{@students.length} student#{"s" if @students.length != 1}"
    puts "Please enter the next student (name, cohort) or press return to go back to main menu"
  end
end

def print_menu
  puts ''
  puts "Please choose something"
  puts '1. Input students'
  puts '2. Show students'
  puts '3. Save students to a csv file'
  puts '4. Load students from a predefined csv file'
  puts '9. Exit'
  print '=>'
end

def print_student_list
  if !@students.empty?
    print_header
    show_students
    print_footer
  else
    puts "No students to print"
  end
end

def menu_select(input)
case input
    when '1'
      input_students
    when '2'  
      print_student_list
    when '3'
      save_students
    when '4'
      try_load_students
    when '9'
      exit
    else
      puts 'Incorrect input. Try again'
    end
  end

def main_menu
  loop do
    print_menu
    menu_select(STDIN.gets.chomp)
  end
end

def save_students 
  file = File.open('students.csv', 'w')
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(',')
    file.puts csv_line
  end
  file.close
end

def load_students(filename = 'students.csv')
  file = File.open(filename, 'r')
  file.readlines.each do |line|
   name, cohort = line.chomp.split(',')
   add_student(name, cohort)
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.length} students from #{filename}"
  else
    "Sorry #{filename} doesn't exist"
    exit
  end
end

main_menu