class Ingredient < ApplicationRecord
  has_many :menus
  has_many :ryouris, through: :menus
  has_one_attached :photo
end
