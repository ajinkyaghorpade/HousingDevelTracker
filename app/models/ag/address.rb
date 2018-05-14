class Ag::Address < ApplicationRecord
  has_one :ag_country
  has_one :ag_state

end
