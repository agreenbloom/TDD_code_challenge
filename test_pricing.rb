require 'minitest/autorun'
require 'minitest/pride'

require './pricing'

class TestPricing < MiniTest::Test

  # test base markup
  def test_flat_markup_add_percentage
    assert_equal 1364.98, Pricing.new(1299.99).flat_markup
  end

  def test_add_one_person
    assert_equal 1315.58, Pricing.new(1299.99).person_markup
  end

end
