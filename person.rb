require './corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = 1
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
  end
  # rubocop:enable Style/OptionalBooleanParameter

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  # rubocop:disable Naming/PredicateName
  def is_of_age?
    @age > 18
  end
  # rubocop:enable Naming/PredicateName
end
