class CreateServices < ActiveRecord::Migration
  def self.up
   create_table :services do |t|
     t.references :user
     t.string :name
     t.string :classification
     t.text :description
     t.integer :quantity
     t.string :barcode
     t.timestamps
   end
 end

 def self.down
   drop_table :services
 end
end
