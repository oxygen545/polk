class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :link
      t.string :title
      t.string :subtitle
      t.string :heading
      t.string :subheading
      t.integer :weight
      t.text :body

      t.timestamps
    end
  end
end
