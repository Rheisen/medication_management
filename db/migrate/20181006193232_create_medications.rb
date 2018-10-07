class CreateMedications < ActiveRecord::Migration[5.1]
  def change
    create_table :medications do |t|
      t.string 'name'
      t.string 'uses'
      t.string 'side_effects'
      t.timestamps
    end
  end
end
