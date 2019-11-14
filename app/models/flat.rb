class Flat < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 9..35 }
  validates :address, presence: true, length: { in: 6..35 }
  validates :number_of_guests, presence: true, inclusion: { in: 1..10 }, numericality: { only_integer: true }
  validates :price_per_night, presence: true, numericality: { only_integer: true }
end
