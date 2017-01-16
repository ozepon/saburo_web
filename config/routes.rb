Rails.application.routes.draw do
  resources :line_live_pages
  resources :line_livers

  get 'live_livers_managements/:line_liver_uid' => 'live_livers_managements#index'
end
