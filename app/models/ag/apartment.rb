class Ag::Apartment < ApplicationRecord

  belongs_to :ag_public_housing_devel, class_name: 'Ag::PublicHousingDevel'
end
