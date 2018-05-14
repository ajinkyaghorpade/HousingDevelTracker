class Ag::Country < ApplicationRecord
  has_many :ag_states, class_name: 'Ag::State'
end
