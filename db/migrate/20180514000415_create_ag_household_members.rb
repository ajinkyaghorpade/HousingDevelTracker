class CreateAgHouseholdMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_household_members do |t|
      t.boolean :head

      t.references :ag_household, foreign_key: true
      t.references :ag_resident, foreign_key: true

      t.timestamps
    end
  end
end
