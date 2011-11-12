class FixArtistAssociations < ActiveRecord::Migration
  def up
    add_column :songs, :artist_id, :integer
  end

  def down
    remove_column :songs, :artist_id
  end
end
