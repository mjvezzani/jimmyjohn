Qotd::Application.routes.draw do
  get "users/new"

  root to: 'static_pages#home'
  
  match '/signup',        to: 'users#new'
  
  match '/about',         to: 'static_pages#about'
  match '/help',          to: 'static_pages#help'
  match '/contact',       to: 'static_pages#contact'
  match '/signin',        to: 'static_pages#signin'
  match '/signup',        to: 'static_pages#signup'
end
