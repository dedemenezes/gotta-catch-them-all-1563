class Trainer < ApplicationRecord
  validates :name, :banner_url, presence: true
  validates :name, length: { minimum: 2 }
  has_many :pokemons
end
