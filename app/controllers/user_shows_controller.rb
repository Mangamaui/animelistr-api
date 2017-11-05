class UserShowsController < ApplicationController
  before_action :set_userShow, :only => [:show, :update, :destroy]

  # GET /usershows
  def index
    @user_shows = UserShow.where(user_id: params[:id])
    render json: @user_shows
  end

  # GET /userShows/:id
  def show
    render json: @user_show
  end

  # POST /userShows
  def create
    @user_show = UserShow.new(params[:user_id], params[:show_id])
    render json: @user_show
  end

  # DELETE /userShows/:id
  def update
    @user_show.update(userShow_params)
    head :no_content
  end

  # PUT /userShows/:id
  def destroy
    @user_show.destroy
    head :no_content
  end


  private
  def userShow_params
    params.permit(:status, :progress)
  end

  def set_userShow
    @user_show = UserShow.find(params[:id])
  end

end
