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

def input_students
  puts "Please enter the name and cohort of each ofthe students"
  puts "Use 'name, cohort'. February assumed by default"
  puts 'Hit return to enter a new name'
  puts "To finish, just hit return twice"
  loop do
    #default value for students is assigned if cohort is not entered
    student = gets.chomp.split(', ')
    break if !student[0] # if user just presses enter we want the loop to break
    student[1] = :february if !student[1] #default value for when no cohort entered
    while !@possible_months.include?(student[1])
      puts "Please re-enter the cohort month"
      student[1] =  gets.chomp
    end
    # add the student hash to the array
    @students << {:name => student[0], :cohort => student[1].to_sym}  
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
    when '9'
      exit
    else
      puts 'Incorrect input. Try again'
    end
  end

def main_menu
  loop do
    print_menu
    menu_select(gets.chomp)
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


main_menu