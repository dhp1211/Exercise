#!/usr/bun/ruby

# require './Human'
require './TxtFile'
require_relative 'HumanClassification'
include HumanClassification

input = TxtFile.new("input_file.txt")
human_array = input.read_file

puts "Lisr of human:"
human_array.each{|item| puts item.show_detail}
puts "List of male:"
male_array = gender_classification(human_array,"male")
male_array.each{|item| puts item.show_detail}
puts "List of male over 18 years-old:"
over_18_array = over_age(male_array,18)
over_18_array.each{|item| puts item.show_detail}
