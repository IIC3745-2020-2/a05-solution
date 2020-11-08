class Ingredient
  attr_accessor :name, :type, :price

  def initialize(name, type, price)
    @name = name
    @type = type
    @price = price
  end
end
