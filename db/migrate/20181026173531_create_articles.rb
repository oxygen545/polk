class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :user, foreign_key: true
      t.references :subpage, foreign_key: true
      t.string :link
      t.string :title
      t.string :subtitle
      t.string :heading
      t.string :subheading
      t.int :weight
      t.text :body

      t.timestamps
    end
  end
end
