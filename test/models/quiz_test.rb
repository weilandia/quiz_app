require_relative "../test_helper"

class QuizTest < Minitest::Test
  include TestHelpers

  def test_quiz_data
    DataLoader.questions_from_csv
    DataLoader.strands_from_csv
    DataLoader.standards_from_csv
    DataLoader.usages_from_csv

    CreateQuiz.new_quiz(5,7)
    assert_equal 5, Quiz.all.first.length
    assert_equal 7, Quiz.all.first.student_id
    require "pry"; binding.pry
  end
end
