class CreateCaffes < ActiveRecord::Migration[5.2]
  def change
    
    create_table :caffes do |t|
      t.text :shop_name
      t.text :caption
      t.integer :user_id

      t.timestamps
      
      
    
    end
  end
end
