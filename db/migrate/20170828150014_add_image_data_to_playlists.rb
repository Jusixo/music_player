class AddImageDataToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :image_data, :text
  end
end
