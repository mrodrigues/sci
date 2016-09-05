class ChangeTextToLongtext < ActiveRecord::Migration
  def up
    change_column :articles, :body, :text, :limit => 1073741823
  end

  def down
    change_column :articles, :body, :text
  end
end
