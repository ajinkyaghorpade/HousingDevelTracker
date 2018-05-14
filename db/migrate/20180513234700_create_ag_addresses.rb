class CreateAgAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_addresses do |t|
      t.string :project_name
      t.string :street_name
      t.string :city
      t.string :zip_code


      t.references :ag_country, foreign_key: true
      t.references :ag_state, foreign_key: true

      t.timestamps
    end
  end
end
