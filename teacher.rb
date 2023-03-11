require_relative './person'

class Teacher < Person
  attr_reader :specialization

  def initialize(name, age, specialization, parent_permission)
    super(name, age)
    @specialization = specialization
    @parent_permission = parent_permission
  end

  def can_use_services?
    true
  end
end
