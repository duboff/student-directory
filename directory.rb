students = [
 "Mario Gintili",
 "Mikhail Dubov",
 "Karolis Noreika",
 "Michael Sidon",
 "Charles De Barros",
 "Ruslan Vikhor",
 "Toby Retallick",
 "Mark Mekhaiel",
 "Sarah Young",
 "Hannah Wight",
 "Khushkaran Singh",
 "Rick brunstedt",
 "Manjit Singh",
 "Alex Gaudiosi",
 "Ross Hepburn",
 "Natascia Marchese",
 "Tiffanie Chia",
 "Matthew Thomas",
 "Freddy McGroarty",
 "Tyler Rollins",
 "Richard Curteis",
 "Anna",
 "Mistery Man",
]

def print_header
	puts  "The students of my cohort at Makers Academy,  We're February's cohort!"
	puts "-----------"
end
# First we're going to print the list of our buddies

def print(names)
	names.each do |x|
		puts x
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)