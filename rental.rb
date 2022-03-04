class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, book, person)
    @date = date
    @book = book
    book.add_rental(self)
    @person = person
  end

  def to_s
    "Date: #{@date}, Book \"#{@book.title}\" by #{@book.author}"
  end
end
