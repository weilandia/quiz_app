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

    standard_count = Standard.all.count
    dist = ((length) / standard_count) + 1

    standard_count.times do
      dist.times do
        if Standard.all[s].questions[q].nil? then q = 0 end
        quiz << Standard.all[s].questions[q]
        q += 1
      end
      s += 1
    end
    quiz.map(&:id)[0..(length - 1)].shuffle
  end
end
