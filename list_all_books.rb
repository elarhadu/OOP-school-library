class ListBooks
  def list_books
    @books.each_with_index do |book, index|
      puts "#{index}. #{book.title} by #{book.author}"
    end
  end
end
