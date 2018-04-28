Rails.application.routes.draw do

  resources :posts
  root "landing_page#home"
end
