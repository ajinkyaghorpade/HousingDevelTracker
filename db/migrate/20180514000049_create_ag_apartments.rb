class CreateAgApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_apartments do |t|
      t.integer :unit_num
      t.integer :num_bedrooms
      t.integer :num_bathrooms
      t.boolean :has_kitchen
      t.boolean :has_living_room
      t.float :sq_footage


      t.references :ag_public_housing_devel, foreign_key: true

      t.timestamps
    end
  end
end
