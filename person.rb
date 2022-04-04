# class Person
class Person
  attr_reader :id, :parent_permission
  attr_accessor :age, :name

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1...10_000).to_i
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if of_age? || parent_permission

    false
  end

  private

  def of_age?
    return true if age >= 18

    false
  end
end
