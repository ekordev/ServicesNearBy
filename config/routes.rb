Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'myprofile/myprofile'
  root 'welcome#index'
  post 'application/search'
  post 'welcome/search'

  post 'myprofile/create'
  get 'admin/index'
  get 'search/index'

  resources :admin

  get '/admin/reject/:id', :to => 'admin#reject', :as => 'adminreject'
  get '/admin/activate/:id', :to => 'admin#activate', :as => 'adminactivate'
  get '/admin/deactivate/:id', :to => 'admin#deactivate', :as => 'admindeactivate'
  get '/admin/deactivatecategory/:id', :to => 'admin#deactivatecategory', :as => 'admindeactivatecategory'
  get '/admin/activatecategory/:id', :to => 'admin#activatecategory', :as => 'adminactivatecategory'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
