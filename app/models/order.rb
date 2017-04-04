class Order < ApplicationRecord
	validates_presence_of :name, :address, :pin, :mobile_no
end
