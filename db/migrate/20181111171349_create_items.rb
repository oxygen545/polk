class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.references :photo, foreign_key: true
      t.string :title
      t.string :heading
      t.text :body

      t.timestamps
    end
  end
end
