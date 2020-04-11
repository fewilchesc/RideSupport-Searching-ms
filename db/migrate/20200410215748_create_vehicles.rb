class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.references :VehicleType, foreign_key: false
      t.string :plate, limit: 6, null: false
      t.string :brand, limit: 15, null: false
      t.string :model, limit: 15, null: false
      t.string :mainColor, limit: 10
      t.string :secondaryColor, limit: 10

      t.timestamps
    end

    add_index :vehicles, :plate, unique: true
    add_foreign_key :vehicles, :vehicle_types, column: :id
  end
end
