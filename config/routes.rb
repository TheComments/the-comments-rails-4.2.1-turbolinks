TheCommentsRails421Turbolinks::Application.routes.draw do
  root 'posts#index'

  get    "autologin/:id" => "users#autologin",  as: :autologin
  delete "logout" => "users#destroy", as: :logout

  resources :posts
  resources :users

  TheCommentsBase::Routes.mixin(self)
  TheCommentsManager::Routes.mixin(self)
  TheCommentsSubscriptions::Routes.mixin(self)
end
