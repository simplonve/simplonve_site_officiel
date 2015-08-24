class Calendrier < ActiveRecord::Base
	validates :nom, presence: true
 	validates :prenom, presence: true
	validates :date, presence: true, uniqueness: true
end
