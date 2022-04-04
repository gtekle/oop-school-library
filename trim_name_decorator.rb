require_relative './names_decorator'

# TrimmerDecorator class
class TrimmerDecorator < CorrectNamesDecorator
  def correct_name
    nameable.correct_name[0, 10]
  end
end
