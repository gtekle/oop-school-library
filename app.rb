require_relative './book'
require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './rental'
require_relative './capitalize_name_decorator'
require_relative './trim_name_decorator'

class App
  attr_reader :books, :people

  def initialize()
    @books = []
    @people = []
    @rentals = []
  end

  def register_person(role, name, age, specialization = '', parent_permission = '')
    is_permitted = parent_permission.downcase == 'y'
    person = if role == 1
               Student.new('104', age, name, parent_permission: is_permitted)
             else
               Teacher.new(specialization, age, name)
             end
    @people << person
  end

  def create_book(title, author)
    @books << Book.new(title, author)
  end

  def show_people
    @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end

  def show_books
    @books.each { |book| puts "[#{book.class}] Title: \"#{book.title}\", Author: #{book.author}" }
  end

  def create_rental(book, person, date)
    @rentals.push(Rental.new(book, person, date))
  end
end
