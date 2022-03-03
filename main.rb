#!/usr/bin/env ruby
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/PerceivedComplexity
def main
  puts "Welcome to School Library App!\n\n"

  books = []
  people = []

  list_all_people = -> { puts people }

  list_all_books = -> { puts books }

  classroom = Classroom.new('Mathematics')

  # rubocop:disable Metrics/BlockLength
  loop do
    puts "Please choose an option by entering a number\n" \
         "1 - List all books\n" \
         "2 - List all people\n" \
         "3 - Create a person\n" \
         "4 - Create a book\n" \
         "5 - Create a rental\n" \
         "6 - List all rentals for a given person id\n" \
         "7 - Exit\n"
    n = gets.chomp
    case n
    when '1'
      list_all_books.call
    when '2'
      list_all_people.call
    when '3'
      print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
      n = gets.chomp
      case n
      when '1'
        print 'Age: '
        age = gets.chomp
        if age != age.to_i.to_s
          puts "Cannot convert it to integer\n"
          next
        end
        age = age.to_i
        print 'Name: '
        name = gets.chomp
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp
        case permission
        when 'Y', 'y'
          people << Student.new(age, name, true, classroom)
        when 'N', 'n'
          people << Student.new(age, name, false, classroom)
        else
          puts "You gave me #{permission} -- I have no idea what to do with that."
        end
      when '2'
        print 'Age: '
        age = gets.chomp
        if age != age.to_i.to_s
          puts "Cannot convert it to integer\n"
          next
        end
        age = age.to_i
        print 'Name: '
        name = gets.chomp
        print 'Specialization: '
        specialization = gets.chomp
        people << Teacher.new(age, name, true, specialization)
      else
        puts "You gave me #{n} -- I have no idea what to do with that."
      end
    when '4'
      print 'Title: '
      title = gets.chomp
      if title == ''
        puts "You haven't entered the title\n"
        next
      end
      print 'Author: '
      author = gets.chomp
      if author == ''
        puts "You haven't entered the author\n"
        next
      end
      books << Book.new(title, author)
      puts 'Book successfully created'
    when '5'
      if books.empty?
        puts "There are no books available\n"
        next
      else
        puts 'Select a book from the following list by number'
        books.length.times { |i| puts "#{i}) #{books[i]}" }
        i = gets.chomp
        if i != i.to_i.to_s
          puts "Cannot convert it to integer\n"
          next
        end
        i = i.to_i
        if i >= books.length
          puts "There are only 0..#{books.length - 1} options available but you chose #{i}"
          next
        end
      end
      if people.empty?
        puts "There are no people available\n"
        next
      else
        puts 'Select a person from the following list by number (not id)'
        people.length.times { |j| puts "#{j}) #{people[j]}" }
        j = gets.chomp
        if j != j.to_i.to_s
          puts "Cannot convert it to integer\n"
          next
        end
        j = j.to_i
        if j >= people.length
          puts "There are only 0..#{books.length - 1} options available but you chose #{j}\n"
          next
        end
      end
      book = books[i]
      person = people[j]
      print 'Date: '
      date = gets.chomp
      Rental.new(date, book, person)
    when '6'
      print 'ID of person: '
      id = gets.chomp
      if id != id.to_i.to_s
        puts "Cannot convert this to integer\n"
        next
      end
      id = id.to_i
      person = people.select { |p| p.id == id } [0]
      if person.nil?
        puts "There is no person with ID #{id}\n"
        next
      end
      puts 'Rentals:'
      puts person.rentals
    when '7'
      break
    else
      puts "You gave me #{n} -- I have no idea what to do with that."
    end
    print "\n"
  end
  # rubocop:enable Metrics/BlockLength
end
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/AbcSize

main
