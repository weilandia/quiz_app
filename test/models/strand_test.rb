require_relative "../test_helper"

class StrandTest < Minitest::Test
  include TestHelpers

  def test_strand_data
    DataLoader.strands_from_csv
    assert_equal 2, Strand.all.count
  end
end
