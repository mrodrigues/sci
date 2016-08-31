class Article < ActiveRecord::Base
	validates :title, presence: true
 	validates :body, presence: true

	def self.search(query)
 	  joins(:taxonomies).
 	    where("articles.title like ? or articles.body like ? or taxonomies.code like ?","%#{query}%","%#{query}%","%#{query}%").
 	      group(:id, :title, :body, :created_at, :updated_at, :user_id)
 	end 	

 	belongs_to :user
 	has_many :relationships, :dependent => :delete_all
 	has_many :taxonomies, :through => :relationships, :dependent => :delete_all
 	#has_and_belongs_to_many :taxonomies
 	has_many :articlelikes

 	accepts_nested_attributes_for :relationships, reject_if: :all_blank, allow_destroy: true
end
