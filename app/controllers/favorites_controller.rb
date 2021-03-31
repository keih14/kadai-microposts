class FavoritesController < ApplicationController
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favor(micropost)
    flash[:success] = 'ツイートをお気に入りに入れました'
    redirect_to :root
  end

  def destroy
    micropost = Micropost.find(params[:id])
    current_user.unfavor(micropost)
    current_user.unfavor(micropost)
    flash[:success] = 'ツイートをお気に入りから削除しました'
    redirect_to :root
  end
end
