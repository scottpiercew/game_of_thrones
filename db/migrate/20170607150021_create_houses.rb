class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :words
      t.integer :age
      t.string :region
      t.string :img_url

      t.timestamps
    end
  end
end
