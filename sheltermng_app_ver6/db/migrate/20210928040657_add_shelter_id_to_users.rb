class AddShelterIdToUsers < ActiveRecord::Migration[5.2]
  add_column :users, :shelter_id, :bigint
end
