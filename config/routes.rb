Rails.application.routes.draw do
  namespace :ag do
    resources :household_apartments
  end
  namespace :ag do
    resources :household_members
  end
  namespace :ag do
    resources :households
  end
  namespace :ag do
    resources :residents
  end
  namespace :ag do
    resources :apartments
  end
  namespace :ag do
    resources :states
  end
  namespace :ag do
    resources :countries
  end
  namespace :ag do
    resources :addresses
  end
  namespace :ag do
    resources :public_housing_devels
  end
  root to: 'visitors#index'
end
