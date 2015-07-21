class Article < ActiveRecord::Base
	validates :day, :month, :year,:content, presence: true
	validates :title, presence: true
	validates :subtitle, presence: true
end

