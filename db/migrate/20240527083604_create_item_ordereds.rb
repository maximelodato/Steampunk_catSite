class CreateItemOrdereds < ActiveRecord::Migration[7.1]
  def change
    create_table :item_ordereds do |t|

      t.timestamps
    end
  end
end
