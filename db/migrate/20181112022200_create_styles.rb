class CreateStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.string :stylename
      t.string :description
      t.string :primary_font
      t.string :secondary_font
      t.string :alt_font
      t.string :primary_color
      t.string :secondary_color
      t.string :alt_color

      t.timestamps
    end
  end
end
