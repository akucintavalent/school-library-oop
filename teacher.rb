require './person'

class Teacher < Person
  def initialize(age, name, parent_permission, specialization)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def to_s
    "[Teacher] #{super}"
  end

  def can_use_services?
    true
  end
end
