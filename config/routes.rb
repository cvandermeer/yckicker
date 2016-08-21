Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      match '*all', to: 'api#cors_preflight_check', via: :options

      resources :tournaments, only: [:show, :create]
    end
  end
end
