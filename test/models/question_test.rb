require_relative "../test_helper"

class QuestionTest < Minitest::Test
  include TestHelpers

  def test_question_data
    DataLoader.questions_from_csv
    assert_equal 12, Question.all.count
  end
end
