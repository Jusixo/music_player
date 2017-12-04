class PagesController < ApplicationController
  def landing
    @playlist = Playlist.last
    @playlists = Playlist.all

    @user = User.first
    @users = User.all
  end

  def index
    @page = params[:page].to_i

    @playlists = Playlists.all.order(created_at: :desc).page(@page).per(9)
  end

end
