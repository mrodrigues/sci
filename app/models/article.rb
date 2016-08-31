class Article < ActiveRecord::Base
	validates :title, presence: true
 	validates :body, presence: true

	def self.search(query)
 		where("title like ? or body like ?","%#{query}%","%#{query}%")
 	end 	

 	belongs_to :user
 	has_many :relationships, :dependent => :delete_all
 	has_many :taxonomies, :through => :relationships, :dependent => :delete_all
 	has_attached_file :attachments, :storage => :database
 	do_not_validate_attachment_file_type :attachments
 	#has_and_belongs_to_many :taxonomies
 	has_many :articlelikes

 	accepts_nested_attributes_for :relationships, reject_if: :all_blank, allow_destroy: true
end
