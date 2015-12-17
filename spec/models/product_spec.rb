require 'rails_helper'

RSpec.describe Product, type: :model do
  it "Should return sorted product arrays" do
  	products = []

  	%w(a b c).each do |name| 
  		 product = Product.new name: name
  		 product.save	
  		 products << product
  	end  

  	expect(Product.alphabetical).to eq (products) 

  end

  it ""

end
