class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.references :ServiceType, foreign_key: false
      t.references :VehicleType, foreign_key: false
      t.text :description, null: false
      t.time :openingTime, null: false
      t.time :closingTime, null: false
      t.numeric :cost, null: false
      t.text :location

      t.timestamps
    end

    add_foreign_key :services, :vehicle_types, column: :id
    add_foreign_key :services, :service_types, column: :id
  end
end
