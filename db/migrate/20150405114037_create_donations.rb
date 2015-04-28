class CreateDonations < ActiveRecord::Migration
  def self.up
   create_table :donations do |t|
#   	 t.belongs_to :user
     t.string :skuout1
     t.integer :qout1
     t.string :status1
     t.integer :btax1 # tax is paid by the buyer only

     t.string :deliverer2
     t.string :skuin2
     t.string :skuout2
     t.integer :qin2
     t.integer :qout2
     t.string :status2

     t.string :deliverer3
     t.string :skuin3
     t.string :skuout3
     t.integer :qin3
     t.integer :qout3
     t.string :status3
     
     t.string :deliverer4
     t.string :skuin4
     t.string :skuout4
     t.integer :qin4
     t.integer :qout4
     t.string :status4

     t.string :deliverer5
     t.string :skuin5
     t.string :skuout5
     t.integer :qin5
     t.integer :qout5
     t.string :status5

     t.string :donationcode
     t.string :globalstatus
     t.text :description
     t.timestamps
   end
      add_reference(:donations, :user)
 end

 def self.down
   drop_table :donations
 end
end