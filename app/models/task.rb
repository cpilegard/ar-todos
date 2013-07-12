require_relative '../../config/application'

class Task < ActiveRecord::Base

	def list
		self.all
	end
end
