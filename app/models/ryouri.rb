class Ryouri < ApplicationRecord
  has_many :menus
  has_many :ingredients, through: :menus
  has_one_attached :photo
end
