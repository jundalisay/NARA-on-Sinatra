class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :address
      t.string :phone
      t.string :email
      t.text :description
#      t.references :sku
      t.timestamps
    end
      add_reference(:users, :sku)
  end

  def down
    drop_table :users
  end
end