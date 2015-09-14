#!/usr/bun/ruby
require_relative 'ConvertArray'
class TxtFile
	include ConvertArray
	attr_reader :file
	def initialize filelink
		@file = filelink		
	end
	# read file
	# input: create a TxtFile bject with file link
	# output: array contain human objects
	def read_file
		input = File.open(@file, "r")
		input_array = Array.new
		while line = input.gets
			human_information_hash = Hash.new
			data = line.chomp.split(',')
			human_information_hash[:name] = data[0].strip
			human_information_hash[:age] = data[1].strip
			human_information_hash[:gender] = data[2].strip
			input_array << human_information_hash
		end
		input.close
		array_to_human_array(input_array)
	end
end
