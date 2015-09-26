class Product
  attr_accessor :price, :person, :material

  def initialize(price, person, material)
    @price = price
    @person = person
    @material = material

  end


  def flat_markup
    flat_markup = @price + (@price * 0.05)
    # (flat_markup * 100).floor / 100.to_f

  end

  def person_markup
    @people = @person * 0.012
    person_markup = (flat_markup * @people)
    # (person_markup * 100).floor / 100.to_f
  end

  def material_markup
    case @material
     when 'pharmaceuticals'
      pharm_markup = (flat_markup * 0.075)
      # (pharm_markup * 100).floor / 100.to_f
     when 'food'
      food_markup = (flat_markup * 0.13)
      # (food_markup * 100).floor / 100.to_f
     when 'electronics'
      electronic_markup = (flat_markup * 0.02)
      # (electronic_markup * 100).floor / 100.to_f
    else 'other'
      0
    end
  end

  def total
   total_price = (flat_markup + person_markup + material_markup).round(2)
   # (total_price * 100).floor / 100.to_f


  end

end