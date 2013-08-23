class CreateVins < ActiveRecord::Migration
  def change
    create_table :vins do |t|
      t.string :vin_number

      t.timestamps
    end
  end
end
