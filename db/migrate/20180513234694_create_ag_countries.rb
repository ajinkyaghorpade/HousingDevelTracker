class CreateAgCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_countries do |t|
      t.string :name
      t.string :iso

      t.timestamps
    end
  end
end
