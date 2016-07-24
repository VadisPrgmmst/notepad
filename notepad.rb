
require_relative 'post'

require_relative 'link'
require_relative 'memo'
require_relative 'task'

puts 'Привет я твой блакнот:)'
puts 'Что хотите записать в блакнот?'

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.creat(choice)

entry.read_from_console

entry.save

puts 'Ура, запись сохранена!!!'

