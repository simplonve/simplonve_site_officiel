class CalendrierController < ApplicationController
	def show
		@intervenant = Calendrier.all.order("date")
		@month = {"06"=>["Juin", "June", 30, 1], "07"=>["Juillet", "July", 31, 3], "08"=>["Août", "August", 31, 6], "09"=>["Septembre", "September", 30, 2], "10"=>["Octobre", "October", 31, 4]}
		@day = ["Lundi", "Mardi", "Mercredi" , "Jeudi", "Vendredi", "Samedi", "Dimanche"]
	end

	def reservation
		@date = "2015-#{params[:month]}-#{params[:day]}"
	end

	def ajouter
		params[:description] = params[:description].gsub(/[<>]/, '')
		params[:resa]["description"] = params[:description]
		@intervenant = Calendrier.new(reservation_params)
		@intervenant.save
		redirect_to "/intervenants"
	end

	private
	  def reservation_params
	    params.require(:resa).permit(:nom, :text)
	    params.require(:resa).permit(:prenom, :text)
	    params.require(:resa).permit(:email, :text)
	    params.require(:resa).permit(:telephone, :text)
	    params.require(:resa).permit(:date, :text)
	  end
end
