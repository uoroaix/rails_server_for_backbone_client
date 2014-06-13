class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: {}
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(firstname: params[:firstname], lastname: params[:lastname], age: params[:age])
      render json: {}
    end

  end

  def create
    @user = User.new(
      firstname: params[:firstname],
      lastname: params[:lastname],
      age: params[:age]
    )

    if @user.save
      render json: @user.attributes
    else
      render status: 500
    end
  end

  def new

  end
end

