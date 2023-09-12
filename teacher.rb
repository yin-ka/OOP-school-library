require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, name, specialization, id = Random.rand(1..1000))
    super(age, name, id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'data' => [age, name, @specialization, id]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['data'])
  end
end
