require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2) 
puts "IDs Are"  
puts @store1
puts @store2

@store1.id
@store2.id

@store1.name = 'Mike'

@store1.save

# Your code goes here ...
