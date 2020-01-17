# frozen_string_literal: true

class UsersController < ApplicationController
  def edit_password
    @user = User.find(params[:id])
  end

  def update_password
    @user = current_user
    redirect_to admin_users_path if @user.update(user_params)
  end

  private

  def klass
    @user.class
  end

  def user_params
    params.require(klass.to_s.underscore).permit(:current_password, :password, :password_confirmation)
  end
end
