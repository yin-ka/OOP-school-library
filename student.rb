require './person'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(age, name, parent_permission, id = Random.rand(1..1000), classroom = 'unknown')
    super(age, name, id)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'data' => [age, name, parent_permission, id]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['data'])
  end
end
