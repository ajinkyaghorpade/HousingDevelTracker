class Ag::State < ApplicationRecord
  belongs_to :ag_country, class_name: 'Ag::Country'
  
end
