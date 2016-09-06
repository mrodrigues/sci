class CreateArticleAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.integer    :article_id
      t.string     :style
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :attachments
  end
end
