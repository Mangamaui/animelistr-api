class UserShowsController < ApplicationController
  before_action :set_userShow, :only => [:show, :update, :destroy]
  before_action :authenticate_user


  # GET /user_shows
  def index
    @user_shows = UserShow.where(user_id: current_user.id)
    render json: @user_shows.as_json(only: [:id, :show_id, :status, :progress])
  end

  # GET /user_shows/:id
  def show
    render json: @user_show.as_json(only: [:id, :show_id, :status, :progress])
  end

  # POST /user_shows
  def create
    @user_show = UserShow.new(user_id: current_user.id ,show_id: params[:show_id])

    if @user_show.save then
      render json: @user_show.as_json(only: [:id, :show_id, :status, :progress])
    else
      render json: { errors: @user_show.errors }, status: 422
    end
  end

  # PUT /user_shows/:id
  def update
    @user_show = UserShow.find_by(id: params[:id], user_id: current_user.id)
    @user_show.update(userShow_params)

    if @user_show.save then
      render json: @user_show.as_json(only: [:id, :show_id, :status, :progress])
    else
      render json: { errors: @user_show.errors }, status: 422
    end

  end

  # DELETE /user_shows/:id
  def destroy
    @user_show = UserShow.find_by(id: params[:id], user_id: current_user.id)
    @user_show.destroy

  end


  private
  def userShow_params
    params.permit(:status, :progress)
  end

  def set_userShow
    @user_show = UserShow.find(params[:id])
  end

end
