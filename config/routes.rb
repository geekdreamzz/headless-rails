Headless::Rails::Engine.routes.draw do
  resources :ai_models do
    member do
      get :playground
    end
  end
end
