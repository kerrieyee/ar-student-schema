require_relative '../../db/config'

# implement your Student model here
 


class Student < ActiveRecord::Base
 	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
 	validates_exclusion_of :age, :in => 0..4, :message => "sorry you are too young for school"
 	validates_uniqueness_of :email
 	validates_format_of :phone, :with => /\d{3}\-\d{3}\-\d{4}/

	# def name
	# 	first_name + " " + last_name
	# end

	def age
		now = Date.today
		now.year - birthday.year
	end

end 