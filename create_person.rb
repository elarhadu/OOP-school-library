require_relative './create_student'
require_relative './create_teacher'

class CreatePerson
  def initialize(people)
    @people = people
  end

  def create_person
    puts 'Are you a:
  1 - Student
  2 - Teacher'
    person_input = gets.chomp.to_i
    case person_input
    when 1 then CreateStudent.new.create_student(@people)
    when 2 then CreateTeacher.new.create_teacher(@people)
    else p 'Please enter a valid option, number 1 or 2'
         create_person
    end
  end
end
