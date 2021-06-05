Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  post 'contact_us', action: :contact_us, controller: 'home'
  get 'projects', action: :index, controller: 'projects'

  defaults format: :json do
    get 'api/v1/projects.json', to: "projects#index"
  end
end
