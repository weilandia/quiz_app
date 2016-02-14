
class CreateQuiz < ActiveRecord::Base

  def self.new_quiz
    puts "How many questions would you like on your quiz?"
    length = gets
    puts "What is your student id?"
    student = gets
    
    Quiz.create({ length: length, student_id: student})
  end
end
