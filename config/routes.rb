Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :v1, defaults: { format: :json } do
    resources :contacts
    resource :sessions, only:  [:create, :destroy]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
