class ChangePlaceToTruck < ActiveRecord::Migration[5.1]
  def change
    rename_table :places, :trucks
  end
end
