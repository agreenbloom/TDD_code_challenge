class Pricing
  attr_accessor :base, :flat_markup

  def initialize(base)
    @base = base
  end


  def flat_markup(base)
    @flat_markup = @base + (@base * 0.05)
    (@flat_markup * 100).floor / 100.0
  end
end