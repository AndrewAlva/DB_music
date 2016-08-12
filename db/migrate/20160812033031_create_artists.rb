class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|

    	t.column :name, :string
    	t.column :age, :integer

      	t.timestamps
    end
  end
end
