class FixArtShares < ActiveRecord::Migration[7.0]
  def change
    rename_table :artworkshares, :artwork_shares
  end
end
