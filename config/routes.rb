Knight::Application.routes.draw do

  # Channels
  get ':id/show' => 'channels#show', as: :channel
  get ':id' => 'channels#new_message', as: :new_message
  post ':id' => 'channels#create_message', as: :create_message
  
  # Static Pages via Thoughtbot's High Voltage
  match ':id' => 'pages#show', as: :static, via: :get

  match '/' => 'channels#index', as: :channels, constraints: { subdomain: /uni-koeln|uni-bamberg/ }

  # Root
  root to: 'institutions#index', as: :institutions

  # Link to your Static Pages
  #   anywhere in tue views using the link_to helper
  #   = link_to 'About', page_path(id: 'about')

  # See how all your routes lay out with 'rake routes'
end
