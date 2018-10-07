class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.string 'dosage'
      t.boolean 'active'
      t.datetime 'refill_date'
      t.timestamps
    end
  end
end
