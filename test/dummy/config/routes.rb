Rails.application.routes.draw do
  mount Headless::Rails::Engine => "/headless-rails"
end
