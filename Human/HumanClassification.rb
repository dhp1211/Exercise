#!/usr/bun/ruby

module HumanClassification
	# classify gender
	# input: array and condition to classify. Ex Condition is "m" or "male" mean "Male" 
	# (or "f" or "female" mean "Female")
	# output: classified array
	def gender_classification(array, condition)
		condition.downcase!
		if condition.eql?"m" or condition.eql?"male"
			result = array.select {|item| item.gender.eql?"Male"}
		elsif condition.eql?"f" or condition.eql?"female"
			result = array.select {|item| item.gender.eql?"Female"}
		else
			result = array.select {|item| item.gender.eql?"(Unknown)"}
		end
	end
	# classify age
	# input: array and age
	# input: array contain object over age
	def over_age(array, condition)
		result = array.select {|item| item.age > condition and !(item.age.eql?"(Unknown)")}
	end
	# classify age
	# input: array and age
	# input: array contain object under age
	def under_age(array, condition)
		result = array.select {|item| item.age < condition and !(item.age.eql?"(Unknown)")}
	end
end