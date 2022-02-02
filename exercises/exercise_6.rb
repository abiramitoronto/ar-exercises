require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mark", last_name: "Collins", hourly_rate: 50)
@store1.employees.create(first_name: "Brandon", last_name: "Maley", hourly_rate: 70)

@store2.employees.create(first_name: "Tilak", last_name: "Gangadhar", hourly_rate: 60)
@store2.employees.create(first_name: "Varanam", last_name: "Ayiram", hourly_rate: 60)
@store2.employees.create(first_name: "Phillip", last_name: "George", hourly_rate: 60)
# Your code goes here ...
