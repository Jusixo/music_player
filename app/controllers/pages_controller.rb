class PagesController < ApplicationController
  def landing
    @playlist = Playlist.first
    @playlists = Playlist.all
  end

  def index
  end
end
