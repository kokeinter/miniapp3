Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'blogs' => 'blogs#index'
  get 'blogs/new' => 'blogs#new'
  post 'blogs' => 'blogs#create'
  delete 'blogs/:id' => 'blogs#destroy'
  get 'blogs/:id/edit' => 'blogs#edit'
  patch 'blogs/:id' => 'blogs#update',as: 'blog'
end
