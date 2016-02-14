class Question < ActiveRecord::Base
  belongs_to :standard
  has_many :quizzes

  def self.build_quiz(length = nil)
    if length == nil
      puts "How many questions would you like?"
      length = gets.to_i
    end

    quiz = []
    s = 0
    q = 0

    length.times do
      if Strand.all[s].nil? then s = 0 end
      if Strand.all[s].questions[q].nil? then q = 0 end
      quiz << Strand.all[s].questions[q]
      s += 1
      q += 1
    end
    quiz.map(&:id)
  end
end
