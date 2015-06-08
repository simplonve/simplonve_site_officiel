class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :day, :month, :year,:content, presence: true
	validates :title, presence: true,
					length: { minimum: 12, too_short: ": Votre titre est trop court"}
	validates :subtitle, presence: true,
					length: { minimum: 12, too_short: "Votre sous-titre est trop court" }
end

