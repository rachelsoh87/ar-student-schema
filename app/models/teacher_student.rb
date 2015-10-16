require_relative '../../db/config'

class TeacherStudent < ActiveRecord::Base
  belongs_to  :student
  belongs_to  :teacher
end