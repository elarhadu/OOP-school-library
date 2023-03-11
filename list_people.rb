class ListPeople
  def display_people
    @people.each_with_index do |person, index|
      puts "#{index}. #{person.name} (#{person.class.name})"
    end
  end
end
