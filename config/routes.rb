Rails.application.routes.draw do
  devise_for :users
  #devise_for :usersはdevise を使用する際に URL として users を含むことを示している:
  root to: "homes#top"
  #get 'homes/top'
end
