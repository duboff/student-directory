students = [
 ["Mario Gintili", :february],
 ["Mikhail Dubov", :february],
 ["Karolis Noreika", :february],
 ["Michael Sidon", :february],
 ["Charles De Barros", :february],
 ["Ruslan Vikhor", :february],
 ["Toby Retallick", :february],
 ["Mark Mekhaiel", :february],
 ["Sarah Young", :february],
 ["Hannah Wight", :february],
 ["Khushkaran Singh", :february],
 ["Rick brunstedt", :february],
 ["Manjit Singh", :february],
 ["Alex Gaudiosi", :february],
 ["Ross Hepburn", :february],
 ["Natascia Marchese", :february],
 ["Tiffanie Chia", :february],
 ["Matthew Thomas", :february],
 ["Freddy McGroarty", :february],
 ["Tyler Rollins", :february],
 ["Richard Curteis", :february],
 ["Anna", :february],
 ["Mistery Man", :february],
]

def print_header
	puts  "The students of my cohort at Makers Academy,  We're February's cohort!"
	puts "-----------"
end
# First we're going to print the list of our buddies

def print(names)
	names.each do |x|
		puts "#{x[0]} (#{x[1]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)