require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |t|
      t.belongs_to :teacher, index: true
      t.string  :first_name 
      t.string  :last_name 
      t.string  :gender 
      t.date    :birthday 
      t.string  :email, unique: true 
      t.string  :phone
      t.timestamp null: false
    end
  end
end
