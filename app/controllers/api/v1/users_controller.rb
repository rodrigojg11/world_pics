class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: serialized(@users, UserSerializer), status: 200
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: serialized(@user, UserSerializer), status: 201
    else
      render json: { message: "Error al crear usuario" }, status: 422
    end
  end

  def destroy
    @user = User.destroy
      render json:  { message: "Usuario eliminado correctamente" }, status: 200
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
