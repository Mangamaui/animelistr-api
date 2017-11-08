class UsersController < ApplicationController

  #  POST /users
  def create
    @user = User.new(email: params[:email], password: params[:password])

    if @user.save then
      token = Knock::AuthToken.new payload: { sub: @user.id }
      render json: token, status: :created
    else
      render json: { errors: @user.errors }, status: 422
    end
  end

end

