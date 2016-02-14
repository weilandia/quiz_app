class Question < ActiveRecord::Base
  belongs_to :standard

  def self.build_quiz(length = nil)
    if length == nil
      puts "How many questions would you like?"
      length = gets.to_i
    end
    strands = all.pluck(:strand_id).uniq
    quiz = []
    dist = (length + 1) / strands.count
    dist.times do
      quiz <<

      n += 1
    end
    quiz.map(&:question_id)
  end

end
