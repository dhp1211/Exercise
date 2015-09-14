#!/usr/bun/ruby

module TaxCaculation
	def price_caculation(price, tax)
		price += (price*tax) / 100.00
		price.round(2)
	end
	def tax_caculation(price, tax)
		price = price * tax / 100.00
		price.round(2)
	end
	def sum_tax_with_input_value(price, number, tax)
		price = (price * tax) / 100.00
		price *= number
		price.round(2)
	end
	def sum_price_with_input_value(price, number, tax)
		price += (price * tax) / 100.00
		price += price * number
		price.round(2)
	end
	def sum_tax_with_input_array(array)
		tax = 0
		array.each do |item|
			tax += ((item.price * item.tax) / 100.00) * item.number
		end
		tax.round(2)
	end
	def sum_price_with_input_array(array)
		price = 0
		array.each do |item|
			price += ((item.price * item.tax) / 100.00 + item.price) * item.number
		end
		price.round(2)
	end
end
