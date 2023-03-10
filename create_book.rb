class CreateBook
  def create_book(books)
    @books = books
    puts 'Enter book\'s title'
    title = gets.chomp
    puts 'Enter author\'s name'
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts 'Book has been successfully created'
  end
end
