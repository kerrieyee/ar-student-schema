require_relative '../config'


class UpdateNames < ActiveRecord::Migration
	class Student < ActiveRecord::Base
	end

  def up
  	add_column :students, :name, :string

    Student.all.each do |student|
    	student.update_attributes!(:name => (student.first_name + " " + student.last_name)) 
    end

    remove_column :students, :first_name
    remove_column :students, :last_name
  end

  def down
  	
  	add_column :students, :first_name, :string
	add_column :students, :last_name, :string

  	Student.all.each do |student|
	  	student.update_attributes!(:first_name => student.name.split(" ")[0])
	  	student.update_attributes!(:last_name => student.name.split(" ")[1])
  	end	

  	remove_column :students, :name
  end
end