class Article < ActiveRecord::Base
	validates :title, presence: true
 	validates :body, presence: true

	def self.search(query)
 		where("title like ? or body like ?","%#{query}%","%#{query}%")
 	end 	
end
