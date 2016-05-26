class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|

      t.string :item
      t.text :description
      t.float :price
      
      t.timestamps
    end
  end
end
