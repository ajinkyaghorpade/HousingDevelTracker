class CreateAgHouseholds < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_households do |t|
      t.boolean :owned
      t.boolean :subsidized

      t.timestamps
    end
  end
end
