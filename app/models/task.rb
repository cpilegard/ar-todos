require_relative '../../config/application'

class Task < ActiveRecord::Base

	def self.list
		self.all
	end

	def self.add(description)
		self.create({ description: description, completed: 0 })
	end

	def self.delete(id)
		self.find(id).destroy
	end

	def self.complete(id)
		self.update(id, completed: 1)
	end

end
