class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :opinion
      t.integer :user_id
      t.integer :caffe_id

      t.timestamps
    end
  end
end
