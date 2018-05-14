FactoryGirl.define do
  factory :ag_apartment, class: 'Ag::Apartment' do
    unit_num 1
    num_bedrooms 1
    num_bathrooms 1
    has_kitchen false
    has_living_room false
    sq_footage 1.5
    pb_housing_devel 1
  end
end
