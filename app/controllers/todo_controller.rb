require_relative '../models/task'

class Todo

	def self.list
		Task.list
	end

	def self.add(description)
		Task.add(description)
	end

	def self.delete(id)
		Task.delete(id)
	end

	def self.complete(id)
		Task.complete(id)
	end

end
