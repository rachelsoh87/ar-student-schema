require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email, unique: true
      t.string  :phone_number
      t.timestamp null: false
    end
  end
end