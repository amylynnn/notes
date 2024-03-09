Rails.application.routes.draw do
  resources :love_notes
  root 'love_notes#index'
end
