class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.belongs_to :color

      t.timestamps
    end
  end
end
