require_relative '../config'


class AddAddressColumn < ActiveRecord::Migration
	def up
		add_column :students, :address, :string
	end

	def down
		remove_column :students, :address
	end
end