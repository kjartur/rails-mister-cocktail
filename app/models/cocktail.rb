class Cocktail < ApplicationRecord
  validates :name, uniqueness: true, presence: true, allow_blank: false
  #validates_uniqueness_of :ingredient_id, :scope, :cocktail

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
