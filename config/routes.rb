Rails.application.routes.draw do
  resources :proposals
  root 'proposals#index'
  match '/twitter_search', to: 'twitter_users#search_users', via: 'get'
  match '/add_proposal', to: 'twitter#add_proposal', via: 'post', as: 'add_proposal'
  match '/twitter_proposal', to: 'twitter#twitter_proposal',     via: 'get'
end
