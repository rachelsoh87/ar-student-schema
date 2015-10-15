require_relative "app/models/student.rb"
require 'date'

student = Student.find(10)
p student.name
p student.age