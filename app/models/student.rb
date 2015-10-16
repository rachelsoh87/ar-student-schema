require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email, format: { with: /.+@.+[.][^.]{2,}\z/ , message: "please enter a valid email"}
  validates :email, uniqueness: true
  validates :age, numericality: { greater_than: 4 }
  validates :phone, format: { with: /.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*/ }
  
  has_one :teacher_student
  has_one :teacher, :through => :teacher_students
  
  def name
    self.first_name + " " + self.last_name
  end

  def age
  date_today = Date.today
  birth_date = self.birthday
  
  age = date_today.year - birth_date.year
  end
  
end
