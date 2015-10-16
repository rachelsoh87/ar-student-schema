require_relative '../app/models/teacher.rb'
require 'faker'

module TeachersGenerator
  def self.generate
    9.times do |t|
      
      Teacher.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.cell_phone
      )
    end    
  end
end  
