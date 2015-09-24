require 'minitest/autorun'
require 'minitest/pride'

require './product'

class TestProduct < MiniTest::Test

  # test base markup
  def test_flat_markup_add_percentage
    assert_equal 1364.98, Product.new(1299.99).flat_markup
  end

# test passes when calculating cost of person with only base price - not including markip
  # def test_add_one_person
  #   assert_equal 1315.58, Product.new(1299.99).person_markup
  # end

  def test__person_markup_with_flat_markup_on_base_price
    assert_equal 1380.57, Product.new(1299.99).person_markup
  end

  def test_three_people_with_markup
    assert 1411.77, Product.new(1299.99).person_markup * 3
  end
end
