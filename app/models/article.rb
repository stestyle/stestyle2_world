class Article < ActiveRecord::Base
	belongs_to :category

#Validations
	validates :title, :presence => true
	validates :content, :presence => true

#Scopes
	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
end
