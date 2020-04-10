class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.references :VehicleType, foreign_key: true
      t.string :vehiclePlate
      t.string :vehicleBrand
      t.string :vehicleModel
      t.string :mainColor
      t.string :secondaryColor

      t.timestamps
    end
  end
end
