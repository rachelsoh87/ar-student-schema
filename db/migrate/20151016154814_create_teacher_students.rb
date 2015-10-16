require_relative '../config'

class CreateTeacherStudents < ActiveRecord::Migration
  def change
    create_table :teacher_students do |t|
      t.belongs_to :teacher
      t.belongs_to :student
      t.timestamps null: false
    end
  end 
end