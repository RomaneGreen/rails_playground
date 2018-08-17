class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :arrival_airport
      t.references :departure_airport

      t.timestamps
    end
    add_foreign_key :flights, :airports, column: :arrival_airport_id,primary_key: :id
      add_foreign_key :flights, :airports, column: :departure_airport_id,primary_key: :id
  end
end
