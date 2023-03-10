class CreateStudent
  def create_student(person)
    @person = person
    puts 'What is your name?'
    name = gets.chomp
    puts 'How old are you?'
    age = gets.chomp.to_i
    puts 'What grade are you?'
    classroom = gets.chomp
    parent_permission = parent_permission?
    @person.push(Student.new(age, classroom, name, parent_permission: parent_permission))
    puts 'Student Successfuly created'
  end

  def parent_permission?
    puts 'Do you have parent permission? Y/N'
    parent_permission = gets.chomp.upcase
    case parent_permission
    when 'Y' then true
    when 'N' then false
    else p 'Enter a valid value: Y or N'
         parent_permission?
    end
  end
end
