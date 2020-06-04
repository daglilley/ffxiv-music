Rails.application.routes.draw do
  get 'bgms/index'
  get 'static_pages/home'
  get 'static/home'
  get 'tracks/show'
  get 'zones/index'
  get 'zones/show'
  get 'duties/index'
  get 'duties/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
