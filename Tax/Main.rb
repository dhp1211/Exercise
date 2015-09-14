#!/usr/bun/ruby

require './TxtFile'

input = TxtFile.new("input_file.txt")
product_array = input.read_file
output = TxtFile.new("output_file.txt")
output.write_file(product_array)

puts "List of product:"
product_array.each {|item| item.show_detail}