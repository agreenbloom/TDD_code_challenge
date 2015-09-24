require 'minitest/autorun'
require 'minitest/pride'

require './pricing'

class TestPricing < MiniTest::Test

  # test base markup
  def test_flat_markup_add_percentage
    assert_equal 1364.98, flat_markup(1299)
  end

end
