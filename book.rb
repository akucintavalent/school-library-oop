class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @autor = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end
end
