# frozen_string_literal: true

class FavoritesController < ApplicationController
    before_action :authenticate_account!
    before_action :fav_params, except: %i[:index :new]

    def index; end

    def new
        @favorite.new
    end

    def create
        @account = Account.find_by(id: fav_params[:account_id])
        if @favorite.save
            render :show
        else
            render :new
        end
    end

    def show; end

    def update
        if @favorite.update(fav_params)
            flash.notice = "Favorite updated successfully"
            redirect_to favorite_path(@favorite.id)
        else
            flash.now.alert = @favorite.errors.full_message.to_sentence
            render :edit
        end
    end

    def destroy
        if @favorite.nil?
          flash.alert = "The favorite does not exist"
          redirect_to root_path
        elsif @favorite.destroy
          flash.notice = "The favorite was deleted successfully."
          redirect_to root_path
        else
          flash.alert = @favorite.errors.full_messages.to_sentence.to_s
          redirect_to account_path(current_account.id)
        end
    end

    private

    def fav_params
        params.require(:favorite).permit(:account_id, movies: [], podcasts: [])
    end
end
