class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.string :shelter_name
      t.bigint :capacity
      t.bigint :count
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
