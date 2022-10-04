# frozen_string_literal: true

class AccountsController < ApplicationController
    before_action :authenticate_account!
    before_action :account_params, except: %i[:index :new]

    def index; end

    def new
        @account = Account.new
        @favorite = Favorite.build(account: @account)
    end

    def create
        @account = Account.new(user_params)
        @favorite.account_id = current_account.id
        if @account.save
          redirect_to root_path
          flash.notice = "An email with a link to confirm this account has been sent to #{@user.email}. If you do not receive this email within a few minutes of signing up, please check your Spam folder."
        else
          redirect_to new_account_registration_path
          flash.now.alert = @account.errors.full_messages.to_sentence
        end
    end

    def edit
        @account = Account.find(params[:id])
        @favorite = Favorite.find_by(account_id: @account.id)
    end

    def update
        if @account.update(account_params)
            flash.notice = "Account updated successfully"
            redirect_to account_path(@account.id)
        else
            flash.now.alert = @account.errors.full_message.to_sentence
            render :edit
        end
    end

    def destroy
        @account = @account.find(params[:id])
        @favorite = Favorite.find_by(account_id: @account.id)
        @account.destroy
        flash.notice = "The account for #{@account.name_first} #{@account.name_last} has been removed."
        redirect_to root_path
    end

    private

    def account_params
        params.require(:account).permit(:username, :first_name, :last_name, :email)
    end
end
