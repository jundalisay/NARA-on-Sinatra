class CreateSkus < ActiveRecord::Migration
  def self.up
   create_table :skus do |t|
#    t.references :user
     t.string :name
     t.string :classification
     t.text :description
     t.string :need
     t.integer :quantity
     t.string :measure
     t.string :barcode
     t.timestamps
   end
   add_reference(:skus, :user)
 end

  def down
    drop_table :skus
  end

end
