Rails.application.routes.draw do
  devise_for :users
  #devise_for :usersはdevise を使用する際に URL として users を含むことを示している:
  root to: "homes#top"
  #get 'homes/top'はデフォルトこれは消してroot toを使う
  get 'homes/about' => 'homes#about', as: 'about'
  #名前付きルートをaboutに設定
  
end
