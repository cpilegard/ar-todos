require_relative '../../config/application'

class Task < ActiveRecord::Base

	def list
		self.all
	end

	def add(description)
		self.create({description: description, completed: 0 })
	end


end
