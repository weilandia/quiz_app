require_relative "../test_helper"

class QuestionTest < Minitest::Test
  include TestHelpers

  def test_question_data
    DataLoader.questions_from_csv
    assert_equal 12, Question.all.count
  end

  def test_build_quiz
    DataLoader.questions_from_csv
    DataLoader.strands_from_csv
    DataLoader.standards_from_csv

    a = Question.build_quiz(5)

    assert_equal [1, 8, 3, 10, 5], a
  end
end
