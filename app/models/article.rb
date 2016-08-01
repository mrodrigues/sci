class Article < ActiveRecord::Base
	validates :title, presence: true
 	validates :body, presence: true

	def self.search(query)
 		where("title like ? or body like ?","%#{query}%","%#{query}%")
 	end 	

 	belongs_to :user
 	has_many :relationships
 	has_many :taxonomies, :through => :relationships
 	#has_and_belongs_to_many :taxonomies

 	accepts_nested_attributes_for :relationships, reject_if: :all_blank, allow_destroy: true
end
