class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :city_name
      t.float :city_lon
      t.float :city_lat

      t.timestamps
    end
  end
end
