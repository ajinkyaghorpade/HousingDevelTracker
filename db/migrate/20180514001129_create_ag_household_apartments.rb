class CreateAgHouseholdApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_household_apartments do |t|
      t.date :moved_id
      t.date :moved_out
      t.float :cost
      
      t.references :ag_apartment, foreign_key: true
      t.references :ag_household, foreign_key: true

      t.timestamps
    end
  end
end
