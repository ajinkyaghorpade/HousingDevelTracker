class CreateAgStates < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_states do |t|
      t.string :name
      t.string :iso

      t.references :ag_country, foreign_key: true

      t.timestamps
    end
  end
end
