class PagesController < ApplicationController
  def landing
    @playlist = Playlist
    @playlists = Playlist.all
  end

  def index
  end
end
