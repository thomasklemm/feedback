Knight::Application.routes.draw do

  # feedback.de / www.feedback.de -> institutions#index
  #   -> Marketing & List of all Universities I signed up
  #
  # uni-bamberg.feedback.de / uni-koeln.feedback.de -> channels#index
  #   --> University Homepage & List of all Channels to send a message to
  #
  # uni-bamberg.feedback.de/ivens -> channels#new_message
  #   --> Send a message to channel ivens at the uni-bamberg institution
  #
  # uni-bamberg.feedback.de/ivens/show
  #   --> Show the messages that are being sent to this channel in real-time
  #        & make existing messages available 

  # Channels
  # REVIEW: better subdomain constraints
  constraints subdomain: /uni-bamberg|uni-koeln|uni-augsburg/ do
    match '/'       => 'channels#index',            as: :channels
    get ':id'       => 'channels#new_message',      as: :new_message
    post ':id'      => 'channels#create_message',   as: :create_message
    get ':id/show'  => 'channels#show',             as: :channel
  end

  # Static Pages via Thoughtbot's High Voltage
  match ':id' => 'pages#show', as: :static, via: :get

  # Institutions
  # root_url and institutions_url both work
  match '/' => 'institutions#index', as: :institutions
  root to: 'institutions#index'

  # Link to your Static Pages
  #   anywhere in tue views using the link_to helper
  #   = link_to 'About', page_path(id: 'about')

  # See how all your routes lay out with 'rake routes'
end
