Rails.application.routes.draw do
  devise_for :users
  #devise_for :usersはdevise を使用する際に URL として users を含むことを示している:
  root to: "homes#top"
  #get 'homes/top'はデフォルトこれは消してroot toを使う
  get 'homes/about' => 'homes#about', as: 'about'
  #名前付きルートをaboutに設定
  resources :users, only: [:show, :edit]
  #get 'users/show'
  #get 'users/edit'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'
end
