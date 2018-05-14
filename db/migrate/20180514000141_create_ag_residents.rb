class CreateAgResidents < ActiveRecord::Migration[5.1]
  def change
    create_table :ag_residents do |t|
      t.string :name
      t.date :dob
      t.string :gender

      t.timestamps
    end
  end
end
