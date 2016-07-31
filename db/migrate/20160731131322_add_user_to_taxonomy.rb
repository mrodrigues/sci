class AddUserToTaxonomy < ActiveRecord::Migration
  def change
    add_reference :taxonomies, :user, index: true, foreign_key: true
  end
end
