class SongsController < ApplicationController
  before_action :set_song!, only: [:show, :edit, :update]

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def show

  end

  def index

  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def song_params
    params.require(:title).permit(:author_name, :released, :release_year, :genre)
  end

  def set_song!
    @song = Song.find(params[:id])
  end
end
