class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2 , null: false
      t.string :image_url

      t.timestamps
    end
  end
end
