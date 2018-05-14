class Ag::HouseholdApartment < ApplicationRecord
  belongs_to :ag_apartment, class_name: 'Ag::Apartment'
  belongs_to :ag_household, class_name: 'Ag::Household'

  belongs_to :ag_public_housing_devel, class_name: 'Ag::PublicHousingDevel'
end
