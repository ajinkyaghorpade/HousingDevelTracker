class Ag::HouseholdApartment < ApplicationRecord
  belongs_to :ag_apartment, class_name: 'Ag::Apartment'
  belongs_to :ag_household, class_name: 'Ag::Household'
  
end
