class PlaylistsController < ApplicationController

  # GET /playlists
  def index
    @playlists = Playlist.where(:created_by_id => current_user)

  end

  # GET /playlists/1
  def show
    @playlist = Playlist.find(params[:id])
  end

  # GET /playlists/new
  def new
    @playlist = Playlist.new
  end

  # GET /playlists/1/edit
  def edit
    @playlist = Playlist.find(params[:id])

    unless @playlist.can_user_edit?(current_user)
      redirect_to root_path, notice: "you can't edit a Mixtape you didn't create"
      return
    end
  end

  # POST /playlists
  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.created_by = current_user
    if @playlist.save
      redirect_to @playlist, notice: 'Playlist was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /playlists/1
  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update(playlist_params)
      redirect_to @playlist, notice: 'Playlist was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /playlists/1
  def destroy
    @playlist = Playlist.find(params[:id])

    unless @playlist.can_user_destroy?(current_user)
      redirect_to root_path, notice: "you can't destroy a playlist you didn't create"
      return
    end

    @playlist.destroy
    redirect_to playlists_url, notice: 'Playlist was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def playlist_params
    params.require(:playlist).permit(:embed_link, :image, :mixtape_title)
  end
end
