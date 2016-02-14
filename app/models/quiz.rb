class Quiz < ActiveRecord::Base
  has_many :questions

  def choose_questions(length)
    questions = []
  end

end
