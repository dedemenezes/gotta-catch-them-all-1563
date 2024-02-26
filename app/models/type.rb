class Type < ApplicationRecord
  has_many :pokemon_types
  validates :name, presence: true
end
