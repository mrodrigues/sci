class ChangeTextToLongtext < ActiveRecord::Migration
  def up
    change_column :articles, :body, :longtext
  end

  def down
    change_column :articles, :body, :text
  end
end
