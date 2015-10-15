require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here


  def name
    self.first_name + " " + self.last_name
  end

  def age
  date_today = Date.today
  birth_date = self.birthday
  
  age = date_today.year - birth_date.year
  end
  
end
