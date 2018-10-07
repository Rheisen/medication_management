class AddModelIndexes < ActiveRecord::Migration[5.1]
  def change
    add_index :patients, :email, unique: true
    add_index :patients, :mobile_number, unique: true
    add_index :medications, :name, unique: true
  end
end
