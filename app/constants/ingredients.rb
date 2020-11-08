require_relative '../models/ingredient'

INGREDIENTS = [
  Ingredient.new('lechuga', 'veggie', 300),
  Ingredient.new('tomate', 'veggie', 350),
  Ingredient.new('cebolla', 'veggie', 500),
  Ingredient.new('mayonesa', 'veggie', 100),
  Ingredient.new('ketchup', 'veggie', 100),
  Ingredient.new('mostaza', 'veggie', 100),
  Ingredient.new('pepinillos', 'veggie', 600),
  Ingredient.new('cheddar', 'veggie', 800),
  Ingredient.new('mozzarella', 'veggie', 900),
  Ingredient.new('tocino', 'non-veggie', 800),
  Ingredient.new('extra hamburguesa de carne', 'non-veggie', 1300),
  Ingredient.new('extra hamburguesa de soya', 'veggie', 1200)
].freeze
