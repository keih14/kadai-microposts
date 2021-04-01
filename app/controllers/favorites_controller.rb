class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favor(micropost)
    flash[:success] = 'ツイートをお気に入りに入れました'
    redirect_to :root
  end

  def destroy
    micropost = Micropost.find(params[:id])
    current_user.unfavor(micropost)
    flash[:success] = 'ツイートをお気に入りから削除しました'
    redirect_to :root
  end
end
