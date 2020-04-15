Rails.application.routes.draw do
  root to: "application#index"
  scope '/api/v1', defaults: {format: :json} do
    resources :articles
  end
end
