require_relative '../models/task'

class Todo

	def list
		Task.list

	end

	def add(description)
		# Task.create({description: description, completed: 0 })
		Task.add(description)

	end

	def delete(id)
		Task.delete(id)

	end

	def complete(id)
		Task.complete(id)
	end





end
