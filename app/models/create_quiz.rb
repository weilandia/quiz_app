
class CreateQuiz < ActiveRecord::Base

  def self.new_quiz(length = nil, student = nil)
    if length == nil
      puts "How many questions would you like on your quiz?"
      length = gets
      puts "What is your student id?"
      student = gets
    end

    Quiz.create({ length: length, student_id: student})
  end
end
