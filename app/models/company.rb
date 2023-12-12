class Company < ApplicationRecord
    has_many :crm_relations, dependent: :destroy
  has_many :related_items, through: :crm_relations

end
