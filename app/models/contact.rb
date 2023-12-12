class Contact < ApplicationRecord
  has_many :crm_relations, dependent: :destroy, as: :item
end
