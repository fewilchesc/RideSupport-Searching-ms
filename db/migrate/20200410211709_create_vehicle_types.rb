class CreateVehicleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_types do |t|
      t.string :name, limit: 30 , null:false

      t.timestamps null:false
    end
    add_index :vehicle_types, :name, unique: true
  end
end
