class Pricing
  attr_accessor :base, :flat_markup, :person

  def initialize(base)
    @base = base
    @person = person
  end


  def flat_markup
    @flat_markup = @base + (@base * 0.05)
    (@flat_markup * 100).floor / 100.to_f
  end

  def person_markup
   @person_markup = @base + (@base * 0.012)
   (@person_markup * 100).floor / 100.to_f

  end

end