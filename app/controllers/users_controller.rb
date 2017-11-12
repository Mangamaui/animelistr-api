class UsersController < ApplicationController
  before_action :authenticate_user, only: :info

  #  POST /users
  def create
    @user = User.new(email: params[:email], password: params[:password], user_name: params[:user_name])

    if @user.save then
      token = Knock::AuthToken.new payload: { sub: @user.id }
      render json: token, status: :created
    else
      render json: { errors: @user.errors }, status: 422
    end
  end

  # GET /user/info
  def info
    render json: {"user": current_user.user_name}
  end

end

