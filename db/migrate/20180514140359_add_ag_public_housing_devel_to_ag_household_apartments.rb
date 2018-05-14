class AddAgPublicHousingDevelToAgHouseholdApartments < ActiveRecord::Migration[5.1]
  def change
    add_reference :ag_household_apartments, :ag_public_housing_devels, foreign_key: true
  end
end
