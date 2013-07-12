require_relative '../../config/application'

class CreateTaskTable < ActiveRecord::Migration
	def change
		create_table :tasks do |t|
			t.string  :description
			t.integer :completed
		end
	end
end