class AddIndexArticleLikes < ActiveRecord::Migration
  def change
  	add_index :article_likes, [:article_id, :user_id], :unique => true
  end
end
