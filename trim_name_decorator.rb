require_relative './name_decorator'

# TrimmerDecorator class
class TrimmerDecorator < NameDecorator
  def correct_name
    nameable.correct_name[0, 10]
  end
end
