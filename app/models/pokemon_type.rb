class PokemonType < ApplicationRecord
  belongs_to :pokemon
  belongs_to :type
  validates :type, uniqueness: { scope: :pokemon }
end
