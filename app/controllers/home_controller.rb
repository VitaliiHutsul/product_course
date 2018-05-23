class HomeController < ApplicationController
	def index


	product = Product.create(name: 'Name From Action')			
	end

end