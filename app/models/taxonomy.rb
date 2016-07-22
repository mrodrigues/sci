class Taxonomy < ActiveRecord::Base
	validates :code, presence: true
 	validates :description, presence: true

	def self.search(query)
 		where("code like ? or description like ?","%#{query}%","%#{query}%")
 	end 	
end
