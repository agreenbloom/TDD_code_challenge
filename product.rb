class Product
  attr_accessor :price, :person, :material

  def initialize(price, person, material)
    @price = price
    @person = person
    @material = material
  end


  def flat_markup
    flat_markup = @price + (@price * 0.05)

  end

  def person_markup
    @people * 0.012
    person_markup = (flat_markup * @people)
  end

  def material_markup
    case @material
    when 'pharmaceuticals'
      pharm_markup = (flat_markup * 0.075)
    when 'food'
      food_markup = (flat_markup * 0.13)
    when 'electronics'
      electronic_markup = (flat_markup * 0.02)
    else 'other'
      0
    end
  end

  def total
   total_price = (flat_markup + person_markup + material_markup)
  end

end