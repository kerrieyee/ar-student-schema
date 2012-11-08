require_relative '../config'


class AddColumns < ActiveRecord::Migration
  def change
    add_column :students, :created_at, :datetime
    add_column :students, :updated_at, :datetime
  end

  def drop
  	drop_table :students
  end
end
