class CreateAgPublicHousingDevels < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_public_housing_devels do |t|
      t.string :name
      t.datetime :open_date
      t.integer :height
      t.datetime :last_renov_date
      
      t.references :ag_address, foreign_key: true

      t.timestamps
    end
  end
end
