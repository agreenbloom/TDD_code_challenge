require 'minitest/autorun'
require 'minitest/pride'

require './product'

class TestProduct < MiniTest::Test


  # # test base markup
  # def test_flat_markup_add_percentage
  #   assert_equal 1364.98, Product.new(1299.99).flat_markup
  # end

# test passes when calculating cost of person with only base price - not including markip
  # def test_add_one_person
  #   assert_equal 1315.58, Product.new(1299.99).person_markup
  # end

# test passes when calculating number of people needed to work on a product
# Commented out test to run materials tests before adding in code to account for number of people working on a project
  # def test__person_markup_with_flat_markup_on_base_price
  #   assert_equal 16.37, Product.new(1299.99, 1.0).person_markup
  # end

  # def test_three_people_with_markup
  #   assert_equal 49.13, Product.new(1299.99, 3.0).person_markup
  # end

#Tests for individual material markups
  # def test_pharmaceutical_markup
  #   assert_equal 102.37, Product.new(1299.99).material_markup
  # end

  # def test_food_markup
  #   assert_equal 177.44, Product.new(1299.99).material_markup
  # end

  # def test_electronic_markup
  #   assert_equal 27.29, Product.new(1299.99).material_markup
  # end



  def test_material_markup_drugs
      assert_equal 102, Product.new(1299, 1, 'pharmaceuticals').material_markup
  end

  def test_material_food
      assert_equal 177, Product.new(1299, 1, 'food').material_markup.round
  end

  def test_electronic_markup
     assert_equal 27, Product.new(1299, 1, 'electronics').material_markup.round
  end

  def test_total_price_food
    assert_equal 1591.58, Product.new(1299.99, 3, 'food').total
  end

  def test_total_price_drugs
    assert_equal 6199.81, Product.new(5432.00, 1, 'pharmaceuticals').total
  end

  def test_total_price_other
    assert_equal 13707.63, Product.new(12456.95, 4, 'other').total
  end

end
