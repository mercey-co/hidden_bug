class CreateCrmRelations < ActiveRecord::Migration[7.1]
  def change
    create_table :crm_relations do |t|
      t.timestamps

      t.string :name
      t.belongs_to :item, null: false
      t.string :item_type, null: false

      t.belongs_to :related_item, null: false
      t.string :related_item_type, null: false
    end
  end
end
