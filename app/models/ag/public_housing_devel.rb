class Ag::PublicHousingDevel < ApplicationRecord

  has_one :ag_address, class_name: 'Ag::Address'

end
