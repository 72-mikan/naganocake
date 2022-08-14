Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  get '/admin' => 'admin/homes#top'
  
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "customer/registrations",
    sessions: "customer/sessions"
  }
  
  get '/customers/my_page' => 'customer/customers#my_page', as: :my_page
  
  root to: 'customer/homes#top'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
