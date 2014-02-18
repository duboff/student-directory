
# First we're going to print the list of our buddies
puts  "The students of my cohort at Makers Academy,  We're February's cohort!"

puts "-----------"
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
# finally,  we print the total

students.each do |student|
	puts student
end
print "Overall,  we have #{students.length} great students!"

