class Relationship < ActiveRecord::Base
  belongs_to :article
  belongs_to :taxonomy

  accepts_nested_attributes_for :taxonomy, reject_if: :all_blank, allow_destroy: true
end
