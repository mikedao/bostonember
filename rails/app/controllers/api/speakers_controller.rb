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

  def destroy
    Speaker.find(params[:id]).destroy
    render json: {}, status: 200
  end

  def update
    @speaker = Speaker.find(params[:id])
    @speaker.update(speaker_params)
    render json: @speaker
  end
  private

  def speaker_params
    params.require(:speaker).permit(:name)
  end
end
