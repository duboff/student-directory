students = [
 {:name => "Mario Gintili", :cohort => :february},
 {:name => "Mikhail Dubov", :cohort => :february},
 {:name => "Karolis Noreika",  :cohort =>:february},
 {:name => "Michael Sidon", :cohort => :february},
 {:name => "Charles De Barros", :cohort => :february},
 {:name => "Ruslan Vikhor", :cohort => :february},
 {:name => "Toby Retallick", :cohort => :february},
 {:name => "Mark Mekhaiel", :cohort => :february},
 {:name => "Sarah Young", :cohort => :february},
 {:name => "Hannah Wight",  :cohort =>:february},
 {:name => "Khushkaran Singh", :cohort => :february},
 {:name => "Rick brunstedt", :cohort => :february},
 {:name => "Manjit Singh", :cohort => :february},
 {:name => "Alex Gaudiosi", :cohort => :february},
 {:name => "Ross Hepburn", :cohort => :february},
 {:name => "Natascia Marchese", :cohort => :february},
 {:name => "Tiffanie Chia", :cohort => :february},
 {:name => "Matthew Thomas", :cohort => :february},
 {:name => "Freddy McGroarty", :cohort => :february},
 {:name => "Tyler Rollins", :cohort => :february},
 {:name => "Richard Curteis", :cohort => :february},
 {:name => "Anna Yanova", :cohort => :february},
 {:name => "Mistery Man", :cohort => :february},
]

def print_header
	puts  "The students of my cohort at Makers Academy,  We're February's cohort!"
	puts "-----------"
end
# First we're going to print the list of our buddies

def print(names)
	names.each do |students|
		puts "#{students[:name]} (#{students[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	#creating empty array
	students = []
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
		#add student to the array
		students << {:name => name, :cohort => :february}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	#return the array of students
	students
end

students = input_students
print_header
print(students)
print_footer(students)