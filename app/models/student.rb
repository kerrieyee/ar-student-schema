require_relative '../../db/config'

# implement your Student model here
 # validates_inclusion_of :email, :in => %w( @ . ), :message => "Please make sure you have typed in a valid email address."
 # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :save



class Student < ActiveRecord::Base

	def name
		first_name + " " + last_name
	end

	def age
		now = Date.today
		now.year - birthday.year
	end

end 