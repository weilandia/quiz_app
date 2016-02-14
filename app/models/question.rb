class Question < ActiveRecord::Base
  has_many :quizzes
  belongs_to :strand

  def self.build_quiz(length = nil)
    if length == nil
      puts "How many questions would you like?"
      length = gets.to_i
    end
    quiz = []
    n = 0
    length.times do
      quiz << all[n].question_id
      n += 1
    end
    quiz
  end

end
