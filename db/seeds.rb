require 'faker'
require_relative '../app/models/task'

name_1 = Faker::Name.name
name_2 = Faker::Name.name
name_3 = Faker::Name.name
names = [name_1, name_2, name_3]

names.each do |n|
	Task.create({ :description => "Kill #{n}", :completed => 0 })
end