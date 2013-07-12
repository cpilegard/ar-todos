require_relative 'config/application'
require_relative 'app/controllers/todo_controller'


if ARGV[0] == 'list'
	p	Todo.list

elsif ARGV[0] == "add"
	p	Todo.add(ARGV[1])

elsif ARGV[0] == 'delete'
	p	Todo.delete(ARGV[1])

elsif ARGV[0] == 'complete'
	p Todo.complete(ARGV[1])

end

