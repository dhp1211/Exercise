#!/usr/bun/ruby
require './Product'
module ConvertArray
	# convert hash to object array
	# input: array contain hash items
	# output: array contain product objects
	def array_to_product_array(array)
		result = Array.new
		array.each do |product_information_hash|
			product_info = product_information_hash.values
			good = Product.new(product_info[0].to_i, product_info[1], product_info[2].to_i)
			result << good
		end
		result
	end
end