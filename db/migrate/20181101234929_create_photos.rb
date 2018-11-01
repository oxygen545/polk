class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :page_name
      t.string :caption
      t.integer :sequence

      t.timestamps
    end
  end
end
