class FavoritesController < ApplicationController
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favor(micropost)
    #micropost = current_user.favorites.create(micropost_id: params[:micropost_id])
    #micropost = Micropost.find(micropost_id: params[:micropost_id])
    #current_user.favor(micropost)
    flash[:success] = 'ツイートをお気に入りに入れました'
    redirect_to :root
  end

  def destroy
    micropost = Micropost.find(params[:id])
    current_user.unfavor(micropost)
    #micropost = current_user.favorites.find_by(micropost_id: params[:micropost_id]).destroy
    #micropost = User.favoring.find(params[:micropost_id])
    current_user.unfavor(micropost)
    flash[:success] = 'ツイートをお気に入りから削除しました'
    redirect_to :root
  end
end
