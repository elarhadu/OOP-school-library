class CreateRental
  def create_rental(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals
    puts 'Select a book by it\'s number'
    @books.each_with_index do |book, index|
      puts "Number: #{index} - Title: #{book.title}, Author: #{book.author}"
    end
    book_id_input = gets.chomp.to_i
    book = @books[book_id_input]
    puts 'Select the person who is renting a book by its number (not ID)'
    @people.each_with_index do |person, index|
      puts "Number: #{index} - Role: #{person.class.name}, name: #{person.name}, ID: #{person.id}"
    end
    person_id_input = gets.chomp.to_i
    person = @people[person_id_input]
    puts 'Enter date [yyyy-mm-dd]'
    date = gets.chomp
    @rentals.push(Rental.new(person, book, date))
    puts 'You have successfully rented a book!'
  end
end
