class HomeController < ApplicationController
	def index
		array_des_id=[]
		Citation.all.map{|citation| array_des_id << citation.id}
	  	tirage_citation = array_des_id.sample
	  	@citation = Citation.find(tirage_citation)
	end
end