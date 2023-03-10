class CreateTeacher
  def create_teacher(person)
    @person = person
    puts 'What is your name?'
    name = gets.chomp
    puts 'How old are you?'
    age = gets.chomp.to_i
    puts 'Enter your specialization'
    specialization = gets.chomp
    @person.push(Teacher.new(name, age, specialization))
  end
end
