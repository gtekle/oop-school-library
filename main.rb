require_relative './person'
require_relative './book'
require_relative './rental'
require_relative './student'
require_relative './capitalize_name_decorator'
require_relative './trim_name_decorator'
require_relative './app'

def main
  options = [
    'list all books',
    'list all people',
    'create a person',
    'create a book',
    'create a rental',
    'list all rentals for a give person id',
    'exit'
  ]

  puts 'Welcome to School Library App!'

  loop do
    puts
    puts 'Please choose an option by entering a number: '
    options.each_with_index do |option, index|
      puts "#{index + 1} - #{option.capitalize}"
    end

    selected_option = gets.chomp.to_i

    break if selected_option == 7
  end
end

main
