class Producto < ApplicationRecord
	belongs_to :marca 
	validates :nombre, presence: true 
	validates :precio, numericality: {less_than_or_equal_to:100}
end
