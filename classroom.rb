require './student'

class Classroom < Student
  attr_reader :students
  attr_accessor :label

  def initialize(label)
    super(age, name, parent_permission)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end
end
