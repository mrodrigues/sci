class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.belongs_to :article, index: true, foreign_key: true
      t.belongs_to :taxonomy, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
