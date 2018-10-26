class CreateSubpages < ActiveRecord::Migration[5.2]
  def change
    create_table :subpages do |t|
      t.references :user, foreign_key: true
      t.references :page, foreign_key: true
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
