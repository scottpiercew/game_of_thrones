class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :title
      t.string :img_url
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
