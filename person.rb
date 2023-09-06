require_relative 'nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def correct_name
    @name
  end

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @parent_permission = parent_permission
    @age = age
    @nameable = Nameable.new
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
