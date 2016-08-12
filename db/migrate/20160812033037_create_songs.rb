class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|

    	t.column :title, :string
    	t.column :duration, :integer
    	t.column :artist_id, :integer, :null => false
    	t.column :genre_id, :integer, :null => false

      	t.timestamps
    end
  end
end
