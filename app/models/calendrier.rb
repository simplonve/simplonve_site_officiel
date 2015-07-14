class Calendrier < ActiveRecord::Base
	validates :nom, presence: true, uniqueness: true
 	validates :prenom, presence: true
 	validates :email, presence: true
 	validates :telephone, presence: true
	validates :date, presence: true
end
