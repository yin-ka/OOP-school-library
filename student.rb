require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, _classroom = 'unknown', name = 'unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = Classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self)
  end
end
