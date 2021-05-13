class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :freight, null: false, default: 800
      t.integer :total_payment
      t.integer :pament_method, null: false, default: 0
      t.integer :is_receive, null: false, default: 0

      t.timestamps
    end
  end
end
