class Ag::HouseholdMember < ApplicationRecord
  has_one :ag_household, class_name: 'Ag::Household'
  has_one :ag_resident, class_name: 'Ag::Resident'
  
end
