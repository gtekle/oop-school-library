require_relative './person'
require_relative './book'
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

  app = App.new
  puts 'Welcome to School Library App!'

  loop do
    puts
    puts 'Please choose an option by entering a number: '
    options.each_with_index do |option, index|
      puts "#{index + 1} - #{option.capitalize}"
    end

    selected_option = gets.chomp.to_i

    break if selected_option == 7

    case selected_option
    when 1
      app.show_books
    when 2
      app.show_people
    when 3
      puts 'Do you want to register a student (1) or a teacher (2)? [1 - student, 2 - teacher]'
      role = gets.chomp.to_i
      print 'Name: '
      name = gets.chomp
      print 'Age: '
      age = gets.chomp.to_i
      if role == 1
        print 'Has parent permission? [Y|N]: '
        parent_permission = gets.chomp
      else
        print 'Specialization: '
        specialization = gets.chomp
      end
      app.register_person(role, name, age, parent_permission || specialization)
      puts 'Person successfully registered!'
    when 4
      print 'Title: '
      title = gets.chomp
      print 'Author: '
      author = gets.chomp
      app.create_book(title, author)
      puts 'Book successfully created!'
    when 5
      puts 'Select a book from the following list by its number'
      app.show_books
      selected_book_number = gets.chomp.to_i
      puts 'Select a person from the following list by its number'
      app.show_people
      selected_person_number = gets.chomp.to_i
      print 'Date: '
      book = app.books[selected_book_number]
      person = app.people[selected_person_number]
      date = gets.chomp
      app.create_rental(book, person, date)
    when 6
      print 'ID of person: '
      person_id = gets.chomp.to_i
      puts 'Rentals:'
      app.list_rentals_by_person(person_id)
    else
      puts 'Please select a valid number from the list!'
    end
  end
end

main
