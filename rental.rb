class Rental
  attr_accessor :date

  def initialize(date, book, person)
    @date = date
    @book = book
    book.add_rental(self)
    @person = person
    pesron.add_rental(self)
  end
end
