class CreateTaxonomies < ActiveRecord::Migration
  def change
    create_table :taxonomies do |t|
      t.string :code
      t.string :description

      t.timestamps null: false
    end
  end
end
