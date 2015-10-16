require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/teacher_student'

require 'byebug'

teachers = Teacher.all
students = Student.all

students = students.first(50)
evenly_split = Array.new(8){students.shift(5)}

  counter = 1
  
  evenly_split.each do |studs|
    studs.each do |student|
      y = Teacher.find(counter)
      TeacherStudent.create(teacher_id: y.id, student_id: student.id)
    end
  counter += 1
  end
  
  p TeacherStudent.all
  