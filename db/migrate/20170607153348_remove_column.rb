class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :age, :integer, null: false, default: '', index: true
  end
end
