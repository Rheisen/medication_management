class AddMedicineAvailability < ActiveRecord::Migration[5.1]
  def change
    add_column :medications, :available, :boolean
  end
end
