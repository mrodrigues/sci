class ChangeTextToLongtext < ActiveRecord::Migration
  def up
    change_column :articles, :body, :text, :limit => 4294967295
  end

  def down
    change_column :articles, :body, :text
  end
end
