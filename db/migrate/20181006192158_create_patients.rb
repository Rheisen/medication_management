class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string 'first_name'
      t.string 'last_name'
      t.string 'email'
      t.string 'mobile_number'
      t.datetime 'birthday'
      t.timestamps
    end
  end
end
