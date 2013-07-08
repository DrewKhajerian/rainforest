require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	setup do 
		# create an instance varible containg the atts of products
		@p = FactoryGirl.create(:products)
		
	end

	# Example Test
	test is_prodcut_valid do

		refute @p.valid?
	end

	# Product Tests

	# User Tests

	# Review Tests

end