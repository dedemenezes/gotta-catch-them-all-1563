class Pokemon < ApplicationRecord
  belongs_to :trainer
  has_many :pokemon_types
  has_many :types, through: :pokemon_types
  validates :name, :image_url, presence: true
end
