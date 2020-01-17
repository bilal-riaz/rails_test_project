# frozen_string_literal: true

class Admin::UsersController < ApplicationController
  before_action :set_user, except: %i[index new create]

  def index
    @users = User.where.not(type: 'Admin')
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user2_params)
    # @user.type = User.find(params[:type])
    if @user.save
      redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @user.update!(user_params)
      redirect_to admin_users_path
    else
      render 'edit'
    end
  end

  def klass
    @user.class
  end

  def toggle_status
    @user.toggle!(:isEnable)
    @user.save
    redirect_to admin_users_path
  end

  def make_manager
    @user.update!(type: 'Manager')
    redirect_to admin_users_path
  end

  # form_for([:admin, @user])
  # @user = Admin.find Manager.find

  private

  def user2_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :type)
  end

  def user_params
    params.require(klass.to_s.underscore).permit(:name, :email, :password, :password_confirmation, :type)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
