class AddPhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.string :name
      t.integer :album_id
      t.timestamps
  end
end
end