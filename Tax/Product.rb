#!/usr/bun/ruby
require_relative 'TaxCaculation'
class Product
	include TaxCaculation
	attr_reader :product, :number, :price, :tax
	@@medicine = ["flu", "headache", "sick", "stomach", "pain", "cancer", "medicine", "broken"]
	@@book = ["book", "author", "poem", "story"]
	@@food = ["meat", "milk", "rice", "potato", "tomato", "water", "vesgetable", "food", "cereal"]
	@@free_tax = [@@medicine, @@book, @@food]
	def initialize(number, product, price)
		@product = product
		@number = number
		@price = price
		@tax = tax_counter
	end
	def show_detail
		puts %"Product:"
		puts "\tName:#{@product}"
		puts "\tQuanlity:#{@number}\t\tPrice:#{@price}$"
		puts "\tTax:#{@tax}% (#{tax_caculation(@price,@tax)}$)"
		puts "\tSum:#{price_caculation(@price,@tax)}$"
	end
	private
	def tax_counter
		basic_tax + import_tax
	end
	def import_tax
		(@product.downcase.include?"import")? 5:0
	end
	def basic_tax
		@@free_tax = @@free_tax.flatten
		result_tax = @@free_tax.any? {|item| @product.downcase.include?item}
		(result_tax)? 0:10
	end
end
