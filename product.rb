class Product
  attr_accessor :price, :person

  def initialize(price)
    @price = price
    @person = person
  end


  def flat_markup
    flat_markup = @price + (@price * 0.05)
    (flat_markup * 100).floor / 100.to_f

  end

  def person_markup
   person_markup = flat_markup + (@price * 0.012)
   (person_markup * 100).floor / 100.to_f

  end



end