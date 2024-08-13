class AddImageIdToCaffes < ActiveRecord::Migration[5.2]
  def change
    add_column :caffes, :image_id, :string
  end
end
