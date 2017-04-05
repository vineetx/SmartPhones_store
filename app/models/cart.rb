class Cart < ApplicationRecord
	has_many :line_items
	has_one :order
end
