require 'minitest/autorun'
require 'minitest/pride'

require './product'

class TestProduct < MiniTest::Test



  def test_material_markup_drugs
      assert_equal 102, Product.new(1299, 1, 'pharmaceuticals').material_markup
  end

  def test_material_food
      assert_equal 177, Product.new(1299, 1, 'food').material_markup
  end

  def test_electronic_markup
     assert_equal 27, Product.new(1299, 1, 'electronics').material_markup
  end

  def test_total_price_food
    assert_equal 1591.58, Product.new(1299, 3, 'food').total
  end

  def test_total_price_drugs
    assert_equal 6199.81, Product.new(5432, 1, 'pharmaceuticals').total
  end

  def test_total_price_other
    assert_equal 13707.63, Product.new(12456, 4, 'other').total
  end

end
