#!/usr/bun/ruby

module ValidateInfomation
	def validate_name(name)
		name.eql?("")? "(Unknown)":name
	end
	def validate_age(age)
		(age.is_a? Integer and age <= 150 and age > 0)? age:"(Unknown)"
	end
	def validate_gender(gender)
		gender.downcase!
		(gender.eql?"m" or gender.eql?"male")? (return "Male"):gender
		(gender.eql?"f" or gender.eql?"female")? "Female" : "(Unknown)"
	end
end