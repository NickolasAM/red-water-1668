class Ingredient < ApplicationRecord
  has_many :ingredient_dishes
  has_many :dishes, through: :ingredients
end
