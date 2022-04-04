require_relative './names_decorator'

# class CapitalizeName decorator
class CapitalizeName < CorrectNamesDecorator
  def correct_name
    nameable.correct_name.capitalize
  end
end
