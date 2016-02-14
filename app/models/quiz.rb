class Quiz < ActiveRecord::Base
  belongs_to :questions

  def choose_questions(length)
    questions = []
  end

end
