class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
    #@userに関連づけられた投稿全て(post_images)を取得し、@pots_imagesに渡す
    #結果的に、全体の投稿ではなく、個人が投稿したもの全てが表示できる
  end

  def edit
  end
end
