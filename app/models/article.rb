class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :day, :month, :year,:content, presence: true
	validates :title, presence: true
	validates :subtitle, presence: true
end

