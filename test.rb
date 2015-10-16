require_relative "app/models/student.rb"
#require_relative "app/models/teacher.rb"
require 'date'

student = Student.find(1)
#p student.name
#p student.age

#p Teacher.all
#p Teacher.create(first_name: "Mary", last_name: "Lam", email: "marylam@gmail.com", phone_number: "1234567890")
#Teacher.find(3).destroy