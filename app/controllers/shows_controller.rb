class ShowsController < ApplicationController

  # GET /shows
  def index
    @shows = Show.all
    render json: @shows
  end

  # GET /shows/:id
  def show
    @show = Show.find(params[:id])
    render json: @show
  end

end
