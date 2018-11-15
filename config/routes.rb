api_methods = [:index, :show, :create, :update, :destroy]

Rails.application.routes.draw do
	namespace :api do
    resources :products, only: api_methods
	end
end
