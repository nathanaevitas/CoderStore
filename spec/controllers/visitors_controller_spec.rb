require 'rails_helper'

RSpec.describe VisitorsController, type: :controller do
	describe "Get Param Sort" do
		before do
			products = []

  			%w(a b c).each do |name| 
		  		 product = Product.new name: name
		  		 product.save	
		  		 products << product
  		    end
			
		end
		it "should return correct products param[:sort] == 'alphabetical'" do
			get root_path, :sort => "alphabetical"
			expect(assign(:products).to match_array products 			
		end
		
	end
	
end
