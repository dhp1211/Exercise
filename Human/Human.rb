#!/usr/bun/ruby
require_relative 'ValidateInfomation'
class Human
	include ValidateInfomation
	attr_reader :name, :age, :gender
	def initialize(name, age, gender)
		@name	= name
		@age = validate_age(age)
		@gender = validate_gender(gender)
	end
	def show_detail
		print "\tName:#{@name}\t\t\tAge:#{@age}\t\tGender:#{@gender}"
	end
end