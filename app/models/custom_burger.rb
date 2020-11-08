class CustomBurger
  attr_accessor :bread_type, :ingredients, :veggie, :price

  def initialize(bread_type, ingredients, veggie)
    @veggie = veggie
    @bread_type = bread_type
    @ingredients = ingredients
    @price = 0
  end
end
