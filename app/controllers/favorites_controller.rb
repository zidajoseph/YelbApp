class FavoritesController < ApplicationController
    before_action :authenticate_user!

    def create
        favorite = current_user.favorites.create(post_id: params[:post_id])
        redirect_to posts_path, notice: "#{favorite.post.user.name}I registered my post as a favorite"
    end

    def show
        @favorite = current_user.favorites.find_by(post_id: @post.id)
    end

    def index
        @favorites = current_user.favorites
    end
    
    def destroy
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to posts_path, notice: "#{favorite.post.user.name}Unfavorite your post"
    end
end
