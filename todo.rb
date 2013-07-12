require_relative 'config/application'
require_relative 'app/controllers/todo_controller'


if ARGV[0] == 'list'
	p	Controller.list

elsif ARGV[0] == "add"
	p	Controller.add(ARGV[1])

elsif ARGV[0] == 'delete'
	p	Controller.delete(ARGV[1])

elsif ARGV[0] == 'complete'
	p Controller.complete(ARGV[1])

end

