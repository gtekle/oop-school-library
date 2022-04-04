require_relative './nameable'

# class Person
class Person < Nameable
  attr_reader :id, :parent_permission
  attr_accessor :age, :name

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1...10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
  end

  private

  def of_age?
    return true if age >= 18

    false
  end

  public

  def can_use_services?
    return true if of_age? || parent_permission

    false
  end

  def correct_name
    name
  end
end
