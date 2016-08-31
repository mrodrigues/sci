class AddAttachmentAttachmentsToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :attachments
    end
  end

  def self.down
    remove_attachment :articles, :attachments
  end
end
