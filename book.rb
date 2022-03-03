class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def to_s
    "Title: \"#{@title}}\", Author: #{@author}"
  end

  def add_rental(rental)
    @rentals << rental
  end
end
