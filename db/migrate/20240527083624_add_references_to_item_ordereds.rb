class AddReferencesToItemOrdereds < ActiveRecord::Migration[7.1]
  def change
    add_reference :item_ordereds, :order, null: false, foreign_key: true
    add_reference :item_ordereds, :item, null: false, foreign_key: true
  end
end
