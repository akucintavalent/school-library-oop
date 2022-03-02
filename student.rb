require './person'

class Student < Person
  attr_writer :classroom

  def initialize(age, name, parent_permission, classroom)
    super(age, name, parent_permission)
    @classroom = classroom # not needed but better safe than sorry
    classroom.add_student(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
