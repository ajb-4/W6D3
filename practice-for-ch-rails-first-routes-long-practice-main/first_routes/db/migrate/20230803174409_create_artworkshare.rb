class CreateArtworkshare < ActiveRecord::Migration[7.0]
  def change
    create_table :artworkshares do |t|
      t.references :artwork, null: false, foreign_key: {to_table: :artworks}
      t.references :artist, null: false, foreign_key: {to_table: :users}
      
      t.timestamps
    end
  end
end
