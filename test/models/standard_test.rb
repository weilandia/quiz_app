require_relative "../test_helper"

class StandardTest < Minitest::Test
  include TestHelpers

  def test_standard_data
    DataLoader.standards_from_csv
    assert_equal 6, Standard.all.count
  end
end
