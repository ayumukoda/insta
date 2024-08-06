class PostImagesController < ApplicationController
  
  def new
    @post_image = PostImage.new
  end
  
  #投稿データの保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
    #@post_image(投稿データ)のuser_idを、current_user.id(今ログインしているユーザーの ID)に
    #指定することで投稿データに、今ログイン中のユーザーの ID を持たせることができる
  end

  def index
  end

  def show
  end
  
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  #上記のメソッドはフォームで入力されたデータが投稿データとして
  #許可されているパラメータかチェック
  
end
