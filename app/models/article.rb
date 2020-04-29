class Article < ApplicationRecord
	belongs_to :user
	
	validates :title, presence: true, length: { minimum: 5 }
	validates :text, presence: true, length: { minimum: 5 }
	validates :details, presence: true, length: { minimum: 5 }
	
end
