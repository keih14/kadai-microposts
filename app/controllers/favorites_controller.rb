class FavoritesController < ApplicationController
  
  def create
    micropost = User.favorites.find(params[:micropost_id])
    current_user.favor(micropost)
    flash[:success] = 'ツイートをお気に入りに入れました'
    redirect_to user
  end

  def destroy
  end
end
