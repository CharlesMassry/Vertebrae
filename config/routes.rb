Rails.application.routes.draw do
  resources :regions

  scope "api" do
    resources :regions
  end
  
  root "dashboard#index"
end
