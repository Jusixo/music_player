class AddCreatedByToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :created_by_id, :integer
  end
end
