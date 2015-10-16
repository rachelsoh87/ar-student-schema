require_relative '../../db/config'

class Teacher < ActiveRecord::Base


validates :first_name, :last_name, presence: true
validates :email, uniqueness: true

has_many :students, :through => :teacher_students 
has_many :teacher_students
end
