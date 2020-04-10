class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.references :ServiceType, foreign_key: true
      t.references :VehicleType, foreign_key: true
      t.string :serviceName
      t.time :openingTime
      t.time :closingTime
      t.text :location

      t.timestamps
    end
  end
end
