class LinkModels < ActiveRecord::Migration[5.1]
  def change
    add_column :prescriptions, :patient_id, :integer
    add_column :prescriptions, :medication_id, :integer
    add_index :prescriptions, :patient_id
    add_index :prescriptions, :medication_id
  end
end
