class AddMixtapeTitleToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :mixtape_title, :string
  end
end
