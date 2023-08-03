class FixArtshare < ActiveRecord::Migration[7.0]
  def change
    rename_column :artworkshares, :artist_id, :viewer_id
  end
end
