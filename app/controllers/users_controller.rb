class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
    #@userに関連づけられた投稿全て(post_images)を取得し、@pots_imagesに渡す
    #結果的に、全体の投稿ではなく、個人が投稿したもの全てが表示できる
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to edit_user_path(@user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
end
