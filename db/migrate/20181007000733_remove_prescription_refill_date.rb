class RemovePrescriptionRefillDate < ActiveRecord::Migration[5.1]
  def change
    remove_column :prescriptions, :refill_date
  end
end
