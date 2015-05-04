class Api::SpeakersController < ApplicationController
  def index
    render json: Speaker.all
  end

  def show
    render json: Speaker.find(params[:id])
  end

  def create
    @speaker = Speaker.create(speaker_params)
    render json: @speaker
  end

  def speaker_params
    params.require(:speaker).permit(:name)
  end
end
