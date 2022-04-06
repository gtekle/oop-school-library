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
end
