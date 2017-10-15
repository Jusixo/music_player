class PagesController < ApplicationController
  def landing
    @playlist = Playlist.last
    @playlists = Playlist.all

    @user = User.first
    @users = User.all
  end

  def index
  end
end
