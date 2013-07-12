require_relative 'config/application'
require_relative 'app/controllers/todo_controller'


def print_list
	Todo.list.each do |task| 
		puts "#{task.id} [#{task.completed == 0 ? " " : "X"}] #{task.description}" 
	end
end

def visual_filler(action)
	500000.times { print ["Beep","Boop"].sample }
	puts "\n\n#{action}..."
	sleep(0.5)
end



if ARGV[0] == 'list'
	print_list

elsif ARGV[0] == "add"
	Todo.add(ARGV[1])
	visual_filler("Adding #{ARGV[1]}")
	print_list

elsif ARGV[0] == 'delete'
	Todo.delete(ARGV[1].to_i)
	visual_filler("Deleting #{ARGV[1]}")
	print_list

elsif ARGV[0] == 'complete'
	Todo.complete(ARGV[1].to_i)
	visual_filler("Completing #{ARGV[1]}")
	print_list

end


