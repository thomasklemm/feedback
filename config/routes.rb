Knight::Application.routes.draw do

  get ':id' => 'channels#show'

  get ':id/new_message' => 'channels#new_message'

  post ':id' => 'channels#create_message'
  
  # Static Pages via Thoughtbot's High Voltage
  match ':id' => 'pages#show', as: :static, via: :get

  # Root
  root to: 'channels#index'

  # Link to your Static Pages
  #   anywhere in tue views using the link_to helper
  #   = link_to 'About', page_path(id: 'about')

  # See how all your routes lay out with 'rake routes'
end
