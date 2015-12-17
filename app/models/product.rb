class Product < ActiveRecord::Base
	def self.alphabetical
		Product.all.order(:name)
	end
end
