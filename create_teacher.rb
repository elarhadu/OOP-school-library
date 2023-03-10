class CreateTeacher
  def create_teacher(people)
    @people = people
    puts 'What is your name?'
    name = gets.chomp
    puts 'How old are you?'
    age = gets.chomp.to_i
    puts 'Enter your specialization'
    specialization = gets.chomp
    @people.push(Teacher.new(name, age, specialization))
  end
end
