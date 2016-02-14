require_relative "../test_helper"

class UsageTest < Minitest::Test
  include TestHelpers

  def test_question_data
    DataLoader.usages_from_csv
    assert_equal 17, Usage.all.count
  end
end
