class ListRentals
  def list_rentals_for_person(person_id)
    rentals = @rentals.select { |rental| rental.person.id == person_id }

    if rentals.empty?
      puts 'No rentals found for that person.'
    else
      puts "Rentals for #{person_id}:"
      rentals.each do |rental|
        puts "#{rental.book.title} by #{rental.book.author}, rented on #{rental.date}"
      end
    end
  end
end
