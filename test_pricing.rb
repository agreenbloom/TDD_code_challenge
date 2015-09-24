require 'minitest/autorun'
require 'minitest/pride'

require './pricing'

class TestPricing < MiniTest::Test

  # test base markup
  def test_flat_markup_add_percentage
    pricing = Pricing.new(1299.99)
    assert_equal 1364.98, pricing.flat_markup(1299.99)
  end

end
