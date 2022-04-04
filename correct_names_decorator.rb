require_relative './nameable'

# CorrectNamesDecorator decorator class
class CorrectNamesDecorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
