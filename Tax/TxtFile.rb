#!/usr/bun/ruby
require_relative 'ConvertArray'
require_relative 'TaxCaculation'
class TxtFile
	include ConvertArray
	include TaxCaculation
	attr_reader :file
	def initialize (file_link)
		@file = file_link		
	end
	# read file
	# input: create a TxtFile bject with file link
	# output: array contain product objects
	def read_file
		input = File.open(@file, "r")
		input_array = Array.new
		while line = input.gets
			product_info_hash = Hash.new
			data = line.chomp.split(',')
			product_info_hash[:number] = data[0].strip
			product_info_hash[:product] = data[1].strip
			product_info_hash[:price] = data[2].strip
			input_array << product_info_hash
		end
		input.close
		array_to_product_array(input_array)
	end
	# read file
	# input: create a TxtFile bject with file link, and array contain procduct objects
	# output: a file with all information about product, sum tax and price
	def write_file(array)
		output = File.new(@file,"w")
		if output
			array.each do |item|
				output.syswrite("#{item.number}")
				output.syswrite(", #{item.product}")
				output.syswrite(", #{item.price}$ + #{tax_caculation(item.price,item.tax)}$ (#{item.tax}%)\n")
			end
			output.syswrite("Sum of tax: #{sum_tax_with_input_array(array)}$\n")
			output.syswrite("Sum of price: #{sum_price_with_input_array(array)}$")
		else
		puts "Unable to open file!"
		end
	end
end
