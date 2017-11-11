class UsersController < ApplicationController
  before_action :authenticate_user, only: :show

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

  # GET /user/:id
  def show
    render json: @user
  end

end

