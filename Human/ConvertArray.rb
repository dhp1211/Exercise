#!/usr/bun/ruby
require './Human'
module ConvertArray
	# convert hash to object array
	# input: array contain hash items
	# output: array contain human objects
	def array_to_human_array(array)
		result = Array.new
		array.each do |human_infomation_hash|
			human_info = human_infomation_hash.values
			person = Human.new(human_info[0], human_info[1].to_i, human_info[2])
			result << person
		end
		result
	end
end