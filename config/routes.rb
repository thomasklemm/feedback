Knight::Application.routes.draw do

  # Static Pages via Thoughtbot's High Voltage
  match ':id' => 'pages#show', as: :static, via: :get

  # Root
  root to: 'welcome#index'

  # Link to your Static Pages
  #   anywhere in tue views using the link_to helper
  #   = link_to 'About', page_path(id: 'about')

  # See how all your routes lay out with 'rake routes'
end
