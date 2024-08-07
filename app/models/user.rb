class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :post_images, dependent: :destroy
  #1:Nの関係　Userモデルは１の側（ポストに対してユーザーは一人のみ
  
  has_one_attached :profile_image
  #profile_imageという名前でacttivestorageでプロフィール画像を保存できるように設定
  
  def get_profile_image
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/sample-author1.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
      #メソッドの内容は画像が設定されない場合no_image.jpgをデフォルト画像で表示させるというもの
    end
    profile_image.variant(resize_to_limit: [100, 100]).processed
  end
end
