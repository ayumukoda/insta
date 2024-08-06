class PostImage < ApplicationRecord
    
    has_one_attached :image
    belongs_to :user
    #1:N　N側（ユーザー1人に対しポストは何投稿もできる
end
