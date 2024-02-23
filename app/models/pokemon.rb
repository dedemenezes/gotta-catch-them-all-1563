class Pokemon < ApplicationRecord
  belongs_to :trainer
  validates :name, :image_url, presence: true
end
