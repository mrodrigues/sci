class Taxonomy < ActiveRecord::Base
	validates :code, presence: true
 	#validates :description, presence: true

	def self.search(query)
 		where("code like ? or description like ?","%#{query}%","%#{query}%")
 	end 	

 	belongs_to :user
 	has_many :relationships
 	has_many :articles, :through => :relationships
 	#has_and_belongs_to_many :articles
end
